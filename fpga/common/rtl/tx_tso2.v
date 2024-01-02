// Language: Verilog 2001

`timescale 1ns / 1ps

/*
 * Transmit segmentation offload module
 */
module tx_tso2 #
(
    // Width of AXI stream interfaces in bits
    parameter DATA_WIDTH = 512,
    // AXI stream tkeep signal width (words per cycle)
    parameter KEEP_WIDTH = (DATA_WIDTH/8),
    // Propagate tid signal
    parameter ID_ENABLE = 0,
    // tid signal width
    parameter ID_WIDTH = 8,
    // Propagate tdest signal
    parameter DEST_ENABLE = 0,
    // tdest signal width
    parameter DEST_WIDTH = 8,
    // Propagate tuser signal
    parameter USER_ENABLE = 1,
    // tuser signal width
    parameter USER_WIDTH = 1,
    // Use checksum init value
    parameter USE_INIT_VALUE = 0,
    // Depth of data FIFO in words
    parameter DATA_FIFO_DEPTH = 4096,
    // Depth of checksum FIFO
    parameter CHECKSUM_FIFO_DEPTH = 64
)
(
    input  wire                   clk,
    input  wire                   rst,

    /*
     * AXI input
     */
    input  wire [DATA_WIDTH-1:0]  s_axis_tdata,
    input  wire [KEEP_WIDTH-1:0]  s_axis_tkeep,
    input  wire                   s_axis_tvalid,
    output wire                   s_axis_tready,
    input  wire                   s_axis_tlast,
    input  wire [ID_WIDTH-1:0]    s_axis_tid,
    input  wire [DEST_WIDTH-1:0]  s_axis_tdest,
    input  wire [USER_WIDTH-1:0]  s_axis_tuser,

    /*
     * AXI output
     */
    output wire [DATA_WIDTH-1:0]  m_axis_tdata,
    output wire [KEEP_WIDTH-1:0]  m_axis_tkeep,
    output wire                   m_axis_tvalid,
    input  wire                   m_axis_tready,
    output wire                   m_axis_tlast,
    output wire [ID_WIDTH-1:0]    m_axis_tid,
    output wire [DEST_WIDTH-1:0]  m_axis_tdest,
    output wire [USER_WIDTH-1:0]  m_axis_tuser,

    /*
     * control input
     */
    input  wire                   csum_enable_in,
    input  wire [7:0]             csum_start_in,
    input  wire [7:0]             csum_offset_in,
    input  wire                   csum_valid_in,
    output wire                   csum_ready_in,

    /*
     * control output
     */
    output wire                   csum_enable_out,
    output wire [7:0]             csum_start_out,
    output wire [7:0]             csum_offset_out,
    output wire                   csum_valid_out,
    input  wire                   csum_ready_out
);

parameter               SEGMENT_SIZE = 1500;
parameter               FLIT_SIZE = KEEP_WIDTH;

parameter               ETH_HEADER_SIZE = 14;
parameter               IP_HEADER_SIZE = 20;
parameter               TCP_HEADER_SIZE = 20;
parameter               UDP_HEADER_SIZE = 8;

parameter               HEADER_SIZE = ETH_HEADER_SIZE + IP_HEADER_SIZE + UDP_HEADER_SIZE; // 42

parameter               TAIL_LEN = (SEGMENT_SIZE + ETH_HEADER_SIZE) % FLIT_SIZE; // 42
parameter               TAIL_REMAIN = (FLIT_SIZE - TAIL_LEN) % FLIT_SIZE; // 64 - 42 = 22
parameter               OFFSET = TAIL_LEN - ETH_HEADER_SIZE - IP_HEADER_SIZE - UDP_HEADER_SIZE; // 0

/*
 * DATA path
 */

// input to tx_tso
reg                     s_axis_tready_tso = 1'b1;

// output from tx_tso
reg [DATA_WIDTH-1:0]    m_axis_tdata_tso;
reg [KEEP_WIDTH-1:0]    m_axis_tkeep_tso;
reg                     m_axis_tvalid_tso = 1'b0;
reg                     m_axis_tlast_tso;
reg [USER_WIDTH-1:0]    m_axis_tuser_tso;

assign s_axis_tready = s_axis_tready_tso;

assign m_axis_tdata = m_axis_tdata_tso;
assign m_axis_tkeep = m_axis_tkeep_tso;
assign m_axis_tvalid = m_axis_tvalid_tso;
assign m_axis_tlast = m_axis_tlast_tso;
assign m_axis_tuser = m_axis_tuser_tso;


integer                 state = 0;

reg [DATA_WIDTH-1:0]    header_flit;
reg [DATA_WIDTH-1:0]    s_axis_tdata_temp;
reg [KEEP_WIDTH-1:0]    s_axis_tkeep_temp;
reg                     s_axis_tlast_temp;
reg [USER_WIDTH-1:0]    s_axis_tuser_temp;

reg [15:0]              remain_seg = 16'b0;
reg [15:0]              remain_flit = 16'b0;

reg [15:0]              my_id = 16'b0;


always @(posedge clk) begin

    if (rst) begin
        state <= 0;
        s_axis_tready_tso <= 1;
    end

    if (state == 0) begin

        if (s_axis_tready) begin
            if (s_axis_tvalid) begin
                if (s_axis_tlast) begin
                    
                    m_axis_tdata_tso <= s_axis_tdata;
                    m_axis_tkeep_tso <= s_axis_tkeep;
                    m_axis_tvalid_tso <= s_axis_tvalid;
                    m_axis_tlast_tso <= s_axis_tlast;
                    m_axis_tuser_tso <= s_axis_tuser;
                    
                    s_axis_tready_tso <= m_axis_tready;

                end else begin

                    if ({s_axis_tdata[12 * 8 +: 8], s_axis_tdata[13 * 8 +: 8]} != 16'h800) begin // no IPv4 // no segmentation
                        
                        m_axis_tdata_tso <= s_axis_tdata;
                        m_axis_tkeep_tso <= s_axis_tkeep;
                        m_axis_tvalid_tso <= s_axis_tvalid;
                        m_axis_tlast_tso <= s_axis_tlast;
                        m_axis_tuser_tso <= s_axis_tuser;
                        
                        s_axis_tready_tso <= m_axis_tready;
                        if (m_axis_tready) begin
                            state <= 2;
                        end else begin
                            state <= 1;
                        end

                    end else begin // IPv4

                        if (s_axis_tdata[23 * 8 +: 8] != 8'h11) begin // TCP // ICMP .. // no segmentation
                            
                            m_axis_tdata_tso <= s_axis_tdata;
                            m_axis_tkeep_tso <= s_axis_tkeep;
                            m_axis_tvalid_tso <= s_axis_tvalid;
                            m_axis_tlast_tso <= s_axis_tlast;
                            m_axis_tuser_tso <= s_axis_tuser;
                            
                            s_axis_tready_tso <= m_axis_tready;
                            if (m_axis_tready) begin
                                state <= 2;
                            end else begin
                                state <= 1;
                            end

                        end else begin // UDP

                            my_id <= my_id + 1;

                            if ({s_axis_tdata[16 * 8 +: 8], s_axis_tdata[17 * 8 +: 8]} <= SEGMENT_SIZE) begin // no segmentation

                                m_axis_tdata_tso <= s_axis_tdata;
                                m_axis_tkeep_tso <= s_axis_tkeep;
                                m_axis_tvalid_tso <= s_axis_tvalid;
                                m_axis_tlast_tso <= s_axis_tlast;
                                m_axis_tuser_tso <= s_axis_tuser;
                                
                                s_axis_tready_tso <= m_axis_tready;
                                if (m_axis_tready) begin
                                    state <= 2;
                                end else begin
                                    state <= 1;
                                end
                                
                            end else begin // segmentation
                                
                                // copy the header
                                header_flit <= s_axis_tdata;
                                
                                m_axis_tdata_tso[0 +: 16 * 8] <= s_axis_tdata[0 +: 16 * 8];
                                {m_axis_tdata_tso[16 * 8 +: 8], m_axis_tdata_tso[17 * 8 +: 8]} <= SEGMENT_SIZE;
                                {m_axis_tdata_tso[18 * 8 +: 8], m_axis_tdata_tso[19 * 8 +: 8]} <= my_id;
                                m_axis_tdata_tso[20 * 8 +: 4 * 8] <= s_axis_tdata[20 * 8 +: 4 * 8];
                                
                                {m_axis_tdata_tso[24 * 8 +: 8], m_axis_tdata_tso[25 * 8 +: 8]} <=
                                    ~((((({4'b0, ~{s_axis_tdata[24 * 8 +: 8], s_axis_tdata[25 * 8 +: 8]}}
                                    + {4'b0, ~{s_axis_tdata[16 * 8 +: 8], s_axis_tdata[17 * 8 +: 8]}} + SEGMENT_SIZE
                                    + {4'b0, ~{s_axis_tdata[18 * 8 +: 8], s_axis_tdata[19 * 8 +: 8]}} + my_id) % 65536)
                                    + (({4'b0, ~{s_axis_tdata[24 * 8 +: 8], s_axis_tdata[25 * 8 +: 8]}}
                                    + {4'b0, ~{s_axis_tdata[16 * 8 +: 8], s_axis_tdata[17 * 8 +: 8]}} + SEGMENT_SIZE
                                    + {4'b0, ~{s_axis_tdata[18 * 8 +: 8], s_axis_tdata[19 * 8 +: 8]}} + my_id) >> 16)) % 65536)
                                    + (((({4'b0, ~{s_axis_tdata[24 * 8 +: 8], s_axis_tdata[25 * 8 +: 8]}}
                                    + {4'b0, ~{s_axis_tdata[16 * 8 +: 8], s_axis_tdata[17 * 8 +: 8]}} + SEGMENT_SIZE
                                    + {4'b0, ~{s_axis_tdata[18 * 8 +: 8], s_axis_tdata[19 * 8 +: 8]}} + my_id) % 65536)
                                    + (({4'b0, ~{s_axis_tdata[24 * 8 +: 8], s_axis_tdata[25 * 8 +: 8]}}
                                    + {4'b0, ~{s_axis_tdata[16 * 8 +: 8], s_axis_tdata[17 * 8 +: 8]}} + SEGMENT_SIZE
                                    + {4'b0, ~{s_axis_tdata[18 * 8 +: 8], s_axis_tdata[19 * 8 +: 8]}} + my_id) >> 16)) >> 16));
    
                                m_axis_tdata_tso[26 * 8 +: 12 * 8] <= s_axis_tdata[26 * 8 +: 12 * 8];
                                {m_axis_tdata_tso[38 * 8 +: 8], m_axis_tdata_tso[39 * 8 +: 8]} <= (SEGMENT_SIZE - IP_HEADER_SIZE);
                                {m_axis_tdata_tso[40 * 8 +: 8], m_axis_tdata_tso[41 * 8 +: 8]} <= 16'b0;
                                
                                m_axis_tdata_tso[42 * 8 +: 22 * 8] <= s_axis_tdata[42 * 8 +: 22 * 8];
                                
                                m_axis_tkeep_tso <= s_axis_tkeep;
                                m_axis_tvalid_tso <= s_axis_tvalid;
                                m_axis_tlast_tso <= s_axis_tlast;
                                m_axis_tuser_tso <= s_axis_tuser;
                                
                                s_axis_tready_tso <= m_axis_tready;
                                if (m_axis_tready) begin
                                    state <= 4;
                                end else begin
                                    state <= 3;
                                end
                                
                                remain_seg <= {s_axis_tdata[16 * 8 +: 8], s_axis_tdata[17 * 8 +: 8]} + ETH_HEADER_SIZE - FLIT_SIZE;
                                remain_flit <= SEGMENT_SIZE + ETH_HEADER_SIZE - FLIT_SIZE;
                                
                            end
                            
                        end // case TCP, UDP end
                    end // case IP end
                end // case flit larger than 64B end
            end else begin
                m_axis_tvalid_tso <= s_axis_tvalid; // try again on state 0
                s_axis_tready_tso <= m_axis_tready;
            end
        end else begin
            s_axis_tready_tso <= m_axis_tready; // try again on state 0
        end
    
    end else if (state == 1) begin // want to go to state 2
        
        s_axis_tready_tso <= m_axis_tready;
        if (m_axis_tready) begin
            state <= 2;
        end
    
    end else if (state == 2) begin // no segmentation
        
        if (s_axis_tready) begin
            if (s_axis_tvalid) begin
                if (s_axis_tlast) begin
                
                    m_axis_tdata_tso <= s_axis_tdata;
                    m_axis_tkeep_tso <= s_axis_tkeep;
                    m_axis_tvalid_tso <= s_axis_tvalid;
                    m_axis_tlast_tso <= s_axis_tlast;
                    m_axis_tuser_tso <= s_axis_tuser;
                    
                    s_axis_tready_tso <= m_axis_tready;
                    state <= 0; // no matter tready is on or off
                    
                end else begin
                    
                    m_axis_tdata_tso <= s_axis_tdata;
                    m_axis_tkeep_tso <= s_axis_tkeep;
                    m_axis_tvalid_tso <= s_axis_tvalid;
                    m_axis_tlast_tso <= s_axis_tlast;
                    m_axis_tuser_tso <= s_axis_tuser;
                    
                    s_axis_tready_tso <= m_axis_tready;
                    
                end
            end else begin
                m_axis_tvalid_tso <= s_axis_tvalid;
                s_axis_tready_tso <= m_axis_tready;
            end
        end else begin
            s_axis_tready_tso <= m_axis_tready; // try again on state 2
        end
        
    end else if (state == 3) begin // want to go to state 4
        
        s_axis_tready_tso <= m_axis_tready;
        if (m_axis_tready) begin
            state <= 4;
        end
        
    end else if (state == 4) begin // segmentation
        
        if (s_axis_tready) begin
            if (s_axis_tvalid) begin
                
                if (remain_flit <= FLIT_SIZE) begin // last flit in this segment // no matter tlast
                    
                    s_axis_tdata_temp <= s_axis_tdata;
                    s_axis_tlast_temp <= s_axis_tlast;
                    s_axis_tkeep_temp <= s_axis_tkeep;
                    s_axis_tuser_temp <= s_axis_tuser;
                    
                    m_axis_tdata_tso[0 +: 42 * 8] <= s_axis_tdata[0 +: 42 * 8];
                    m_axis_tkeep_tso <= {FLIT_SIZE{1'b1}} >> TAIL_REMAIN;
                    m_axis_tvalid_tso <= s_axis_tvalid;
                    m_axis_tlast_tso <= 1;
                    m_axis_tuser_tso <= s_axis_tuser;
                    
                    if (remain_seg <= TAIL_LEN) begin // corner case // skip state 6 and go to state 0

                        s_axis_tready_tso <= m_axis_tready;
                        state <= 0;

                    end else begin // normal case // go to state 6

                        s_axis_tready_tso <= 0;
                        if (m_axis_tready) begin
                            state <= 6;
                        end else begin
                            state <= 5;
                        end
                        
                        remain_seg <= remain_seg - TAIL_LEN;
                        remain_flit <= SEGMENT_SIZE + ETH_HEADER_SIZE;
                    end
                    
                end else begin // normal case // flit in the middle of this segment
                    
                    if (s_axis_tlast) begin
                        state <= 0;
                    end
                    
                    m_axis_tdata_tso <= s_axis_tdata;
                    m_axis_tkeep_tso <= s_axis_tkeep;
                    m_axis_tvalid_tso <= s_axis_tvalid;
                    m_axis_tlast_tso <= s_axis_tlast;
                    m_axis_tuser_tso <= s_axis_tuser;
                    
                    s_axis_tready_tso <= m_axis_tready;
                    if (m_axis_tready) begin
                        remain_seg <= remain_seg - FLIT_SIZE;
                        remain_flit <= remain_flit - FLIT_SIZE;
                    end

                end

            end else begin
                m_axis_tvalid_tso <= s_axis_tvalid; // try again
                s_axis_tready_tso <= m_axis_tready;
            end
            
        end else begin
        
            s_axis_tready_tso <= m_axis_tready;
            if (m_axis_tready) begin
                remain_seg <= remain_seg - FLIT_SIZE;
                remain_flit <= remain_flit - FLIT_SIZE;
            end
            
        end
    end else if (state == 5) begin
    
        if (m_axis_tready) begin
            state <= 6;
        end
        
    end else if (state == 6) begin
        
        my_id <= my_id + 1;
        
        if (remain_seg <= SEGMENT_SIZE - IP_HEADER_SIZE - UDP_HEADER_SIZE) begin // last segment in this packet
        
            m_axis_tdata_tso[0 +: 16 * 8] <= header_flit[0 +: 16 * 8];
            {m_axis_tdata_tso[16 * 8 +: 8], m_axis_tdata_tso[17 * 8 +: 8]} <= (remain_seg + IP_HEADER_SIZE + UDP_HEADER_SIZE);
            {m_axis_tdata_tso[18 * 8 +: 8], m_axis_tdata_tso[19 * 8 +: 8]} <= my_id;
            m_axis_tdata_tso[20 * 8 +: 4 * 8] <= header_flit[20 * 8 +: 4 * 8];

            {m_axis_tdata_tso[24 * 8 +: 8], m_axis_tdata_tso[25 * 8 +: 8]} <=
                ~((((({4'b0, ~{header_flit[24 * 8 +: 8], header_flit[25 * 8 +: 8]}}
                + {4'b0, ~{header_flit[16 * 8 +: 8], header_flit[17 * 8 +: 8]}} + (remain_seg + IP_HEADER_SIZE + UDP_HEADER_SIZE)
                + {4'b0, ~{header_flit[18 * 8 +: 8], header_flit[19 * 8 +: 8]}} + my_id) % 65536)
                + (({4'b0, ~{header_flit[24 * 8 +: 8], header_flit[25 * 8 +: 8]}}
                + {4'b0, ~{header_flit[16 * 8 +: 8], header_flit[17 * 8 +: 8]}} + (remain_seg + IP_HEADER_SIZE + UDP_HEADER_SIZE)
                + {4'b0, ~{header_flit[18 * 8 +: 8], header_flit[19 * 8 +: 8]}} + my_id) >> 16)) % 65536)
                + (((({4'b0, ~{header_flit[24 * 8 +: 8], header_flit[25 * 8 +: 8]}}
                + {4'b0, ~{header_flit[16 * 8 +: 8], header_flit[17 * 8 +: 8]}} + (remain_seg + IP_HEADER_SIZE + UDP_HEADER_SIZE)
                + {4'b0, ~{header_flit[18 * 8 +: 8], header_flit[19 * 8 +: 8]}} + my_id) % 65536)
                + (({4'b0, ~{header_flit[24 * 8 +: 8], header_flit[25 * 8 +: 8]}}
                + {4'b0, ~{header_flit[16 * 8 +: 8], header_flit[17 * 8 +: 8]}} + (remain_seg + IP_HEADER_SIZE + UDP_HEADER_SIZE)
                + {4'b0, ~{header_flit[18 * 8 +: 8], header_flit[19 * 8 +: 8]}} + my_id) >> 16)) >> 16));

            m_axis_tdata_tso[26 * 8 +: 12 * 8] <= header_flit[26 * 8 +: 12 * 8];
            {m_axis_tdata_tso[38 * 8 +: 8], m_axis_tdata_tso[39 * 8 +: 8]} <= (remain_seg + UDP_HEADER_SIZE);
            {m_axis_tdata_tso[40 * 8 +: 8], m_axis_tdata_tso[41 * 8 +: 8]} <= 16'b0; // missing UDP checksum

            m_axis_tdata_tso[42 * 8 +: TAIL_REMAIN * 8] <= s_axis_tdata_temp[TAIL_LEN * 8 +: TAIL_REMAIN * 8]; // 22B
            
            m_axis_tvalid_tso <= 1;
            m_axis_tuser_tso <= s_axis_tuser_temp;
            
            if (s_axis_tlast_temp) begin // corner case // skip state 4 and go to state 0
                
                m_axis_tkeep_tso <= s_axis_tkeep_temp;
                m_axis_tlast_tso <= 1;
                s_axis_tready_tso <= m_axis_tready;
                state <= 0; // no matter tready is on or off
                
            end else begin // normal case
            
                m_axis_tkeep_tso <= {KEEP_WIDTH{1'b1}};
                m_axis_tlast_tso <= 0;
                s_axis_tready_tso <= m_axis_tready;
                if (m_axis_tready) begin
                    state <= 4;
                end else begin
                    state <= 3;
                end
            
            end
            
        end else begin // not last segment in this packet

            m_axis_tdata_tso[0 +: 16 * 8] <= header_flit[0 +: 16 * 8];
            {m_axis_tdata_tso[16 * 8 +: 8], m_axis_tdata_tso[17 * 8 +: 8]} <= SEGMENT_SIZE;
            {m_axis_tdata_tso[18 * 8 +: 8], m_axis_tdata_tso[19 * 8 +: 8]} <= my_id;
            m_axis_tdata_tso[20 * 8 +: 4 * 8] <= header_flit[20 * 8 +: 4 * 8];
            
            {m_axis_tdata_tso[24 * 8 +: 8], m_axis_tdata_tso[25 * 8 +: 8]} <=
                ~((((({4'b0, ~{header_flit[24 * 8 +: 8], header_flit[25 * 8 +: 8]}}
                + {4'b0, ~{header_flit[16 * 8 +: 8], header_flit[17 * 8 +: 8]}} + SEGMENT_SIZE
                + {4'b0, ~{header_flit[18 * 8 +: 8], header_flit[19 * 8 +: 8]}} + my_id) % 65536)
                + (({4'b0, ~{header_flit[24 * 8 +: 8], header_flit[25 * 8 +: 8]}}
                + {4'b0, ~{header_flit[16 * 8 +: 8], header_flit[17 * 8 +: 8]}} + SEGMENT_SIZE
                + {4'b0, ~{header_flit[18 * 8 +: 8], header_flit[19 * 8 +: 8]}} + my_id) >> 16)) % 65536)
                + (((({4'b0, ~{header_flit[24 * 8 +: 8], header_flit[25 * 8 +: 8]}}
                + {4'b0, ~{header_flit[16 * 8 +: 8], header_flit[17 * 8 +: 8]}} + SEGMENT_SIZE
                + {4'b0, ~{header_flit[18 * 8 +: 8], header_flit[19 * 8 +: 8]}} + my_id) % 65536)
                + (({4'b0, ~{header_flit[24 * 8 +: 8], header_flit[25 * 8 +: 8]}}
                + {4'b0, ~{header_flit[16 * 8 +: 8], header_flit[17 * 8 +: 8]}} + SEGMENT_SIZE
                + {4'b0, ~{header_flit[18 * 8 +: 8], header_flit[19 * 8 +: 8]}} + my_id) >> 16)) >> 16));
            
            m_axis_tdata_tso[26 * 8 +: 12 * 8] <= header_flit[26 * 8 +: 12 * 8];
            {m_axis_tdata_tso[38 * 8 +: 8], m_axis_tdata_tso[39 * 8 +: 8]} <= (SEGMENT_SIZE - IP_HEADER_SIZE);
            {m_axis_tdata_tso[40 * 8 +: 8], m_axis_tdata_tso[41 * 8 +: 8]} <= 16'b0; // missing UDP checksum
            
            m_axis_tdata_tso[42 * 8 +: TAIL_REMAIN * 8] <= s_axis_tdata_temp[TAIL_LEN * 8 +: TAIL_REMAIN * 8]; // 22B

            m_axis_tkeep_tso <= {KEEP_WIDTH{1'b1}};
            m_axis_tvalid_tso <= s_axis_tvalid;
            m_axis_tlast_tso <= s_axis_tlast;
            m_axis_tuser_tso <= s_axis_tuser;
            
            s_axis_tready_tso <= m_axis_tready;
            if (m_axis_tready) begin
                state <= 4;
            end else begin
                state <= 3;
            end
        end
        
        remain_seg <= remain_seg - TAIL_REMAIN;
        remain_flit <= remain_flit - FLIT_SIZE;

    end
end

endmodule
