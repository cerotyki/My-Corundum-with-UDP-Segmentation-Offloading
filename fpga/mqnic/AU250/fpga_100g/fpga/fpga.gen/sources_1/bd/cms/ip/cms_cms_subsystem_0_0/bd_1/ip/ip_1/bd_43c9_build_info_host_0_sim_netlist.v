// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Jun 30 15:23:18 2021
// Host        : cream4 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/junghan/corundum-original/fpga/mqnic/AU250/fpga_100g/fpga/fpga.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_1/bd_43c9_build_info_host_0_sim_netlist.v
// Design      : bd_43c9_build_info_host_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_43c9_build_info_host_0,shell_utils_build_info_v1_0_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "shell_utils_build_info_v1_0_0,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module bd_43c9_build_info_host_0
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cms_aclk_ctrl_0, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN cms_aclk_ctrl_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]S_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [4:0]S_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [4:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [4:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [1:0]NLW_U0_S_AXI_BRESP_UNCONNECTED;
  wire [1:0]NLW_U0_S_AXI_RRESP_UNCONNECTED;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_CORE_REVISION = "0" *) 
  (* C_MAJOR_VERSION = "2" *) 
  (* C_MINOR_VERSION = "2" *) 
  (* C_PATCH_VERSION = "0" *) 
  (* C_PERFORCE_CL = "3064653" *) 
  (* C_RESERVED_TAG = "0" *) 
  (* C_SUBSYSTEM_ID = "2" *) 
  (* C_S_AXI_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_VIV_VERSION = "2105360" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* is_du_within_envelope = "true" *) 
  bd_43c9_build_info_host_0_shell_utils_build_info_v1_0_0 U0
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR({S_AXI_ARADDR[4:2],1'b0,1'b0}),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR({S_AXI_AWADDR[4:2],1'b0,1'b0}),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BRESP(NLW_U0_S_AXI_BRESP_UNCONNECTED[1:0]),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RRESP(NLW_U0_S_AXI_RRESP_UNCONNECTED[1:0]),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_WVALID(S_AXI_WVALID));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module bd_43c9_build_info_host_0_address_decoder
   (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ,
    E,
    S_AXI_ARESETN_0,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    start2,
    IP2Bus_WrAck,
    Q,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ,
    bus2ip_rnw_i,
    \Scratch_reg[0] );
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ;
  output [0:0]E;
  output [0:0]S_AXI_ARESETN_0;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input start2;
  input IP2Bus_WrAck;
  input [4:0]Q;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  input bus2ip_rnw_i;
  input [2:0]\Scratch_reg[0] ;

  wire Bus2IP_CS;
  wire [0:0]E;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ;
  wire IP2Bus_WrAck;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  wire [4:0]Q;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire [0:0]S_AXI_ARESETN_0;
  wire [2:0]\Scratch_reg[0] ;
  wire bus2ip_rnw_i;
  wire start2;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IP2Bus_Ack[1]_i_1 
       (.I0(Bus2IP_CS),
        .I1(S_AXI_ARESETN),
        .O(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \IP2Bus_Data[31]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(Bus2IP_CS),
        .O(S_AXI_ARESETN_0));
  LUT6 #(
    .INIT(64'h0000000000005400)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ),
        .I1(Bus2IP_CS),
        .I2(start2),
        .I3(S_AXI_ARESETN),
        .I4(IP2Bus_WrAck),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ),
        .Q(Bus2IP_CS),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00004000)) 
    \Scratch[31]_i_1 
       (.I0(bus2ip_rnw_i),
        .I1(Bus2IP_CS),
        .I2(\Scratch_reg[0] [2]),
        .I3(\Scratch_reg[0] [0]),
        .I4(\Scratch_reg[0] [1]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    s_axi_bvalid_i_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ),
        .I3(Q[0]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    s_axi_rvalid_i_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .I3(Q[0]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module bd_43c9_build_info_host_0_axi_lite_ipif
   (SR,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    S_AXI_RDATA,
    S_AXI_ARREADY,
    S_AXI_WREADY,
    D,
    E,
    S_AXI_ARESETN_0,
    S_AXI_ACLK,
    S_AXI_ARVALID,
    S_AXI_ARESETN,
    IP2Bus_WrAck,
    S_AXI_RREADY,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    Q,
    \IP2Bus_Data_reg[31] ,
    S_AXI_ARADDR,
    S_AXI_AWADDR);
  output [0:0]SR;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output [31:0]S_AXI_RDATA;
  output S_AXI_ARREADY;
  output S_AXI_WREADY;
  output [31:0]D;
  output [0:0]E;
  output [0:0]S_AXI_ARESETN_0;
  input S_AXI_ACLK;
  input S_AXI_ARVALID;
  input S_AXI_ARESETN;
  input IP2Bus_WrAck;
  input S_AXI_RREADY;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input [31:0]Q;
  input [31:0]\IP2Bus_Data_reg[31] ;
  input [2:0]S_AXI_ARADDR;
  input [2:0]S_AXI_AWADDR;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]\IP2Bus_Data_reg[31] ;
  wire IP2Bus_WrAck;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [31:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [2:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire [0:0]S_AXI_ARESETN_0;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [2:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire s_axi_bvalid_i_reg;
  wire s_axi_rvalid_i_reg;

  bd_43c9_build_info_host_0_slave_attachment I_SLAVE_ATTACHMENT
       (.D(D),
        .E(E),
        .\IP2Bus_Data_reg[31] (\IP2Bus_Data_reg[31] ),
        .IP2Bus_WrAck(IP2Bus_WrAck),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .Q(Q),
        .SR(SR),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(S_AXI_ARESETN_0),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module bd_43c9_build_info_host_0_slave_attachment
   (SR,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    S_AXI_RDATA,
    S_AXI_ARREADY,
    S_AXI_WREADY,
    D,
    E,
    S_AXI_ARESETN_0,
    S_AXI_ACLK,
    S_AXI_ARVALID,
    S_AXI_ARESETN,
    IP2Bus_WrAck,
    S_AXI_RREADY,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    Q,
    \IP2Bus_Data_reg[31] ,
    S_AXI_ARADDR,
    S_AXI_AWADDR);
  output [0:0]SR;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output [31:0]S_AXI_RDATA;
  output S_AXI_ARREADY;
  output S_AXI_WREADY;
  output [31:0]D;
  output [0:0]E;
  output [0:0]S_AXI_ARESETN_0;
  input S_AXI_ACLK;
  input S_AXI_ARVALID;
  input S_AXI_ARESETN;
  input IP2Bus_WrAck;
  input S_AXI_RREADY;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input [31:0]Q;
  input [31:0]\IP2Bus_Data_reg[31] ;
  input [2:0]S_AXI_ARADDR;
  input [2:0]S_AXI_AWADDR;

  wire [4:2]Bus2IP_Addr;
  wire [31:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [4:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire [31:0]\IP2Bus_Data_reg[31] ;
  wire IP2Bus_WrAck;
  wire I_DECODER_n_1;
  wire I_DECODER_n_2;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [31:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [2:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire [0:0]S_AXI_ARESETN_0;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [2:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_WREADY;
  wire S_AXI_WREADY_INST_0_i_1_n_0;
  wire S_AXI_WVALID;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire bus2ip_rnw_i;
  wire clear;
  wire is_read;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write;
  wire is_write_reg_n_0;
  wire [1:0]p_0_out;
  wire [4:0]plusOp;
  wire rst;
  wire s_axi_bresp_i;
  wire s_axi_bvalid_i_i_1_n_0;
  wire s_axi_bvalid_i_reg_0;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_rvalid_i_reg_0;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire state1__2;
  wire \state[1]_i_2_n_0 ;

  LUT6 #(
    .INIT(64'hFFFF007000700070)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(S_AXI_ARVALID),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(S_AXI_BREADY),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(S_AXI_RREADY),
        .I3(s_axi_rvalid_i_reg_0),
        .O(state1__2));
  LUT5 #(
    .INIT(32'h888F8888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(S_AXI_ARVALID),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(I_DECODER_n_1),
        .I3(IP2Bus_WrAck),
        .I4(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h040404FF04040404)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(S_AXI_ARVALID),
        .I3(I_DECODER_n_2),
        .I4(IP2Bus_WrAck),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAEEEEEAEA)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state[3]_i_2_n_0 ),
        .I1(s_axi_bresp_i),
        .I2(I_DECODER_n_2),
        .I3(I_DECODER_n_1),
        .I4(IP2Bus_WrAck),
        .I5(s_axi_rresp_i),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h002A2A2A)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(s_axi_rvalid_i_reg_0),
        .I2(S_AXI_RREADY),
        .I3(s_axi_bvalid_i_reg_0),
        .I4(S_AXI_BREADY),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .O(plusOp[4]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[0]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [0]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[10]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[11]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4101)) 
    \IP2Bus_Data[12]_i_1 
       (.I0(Bus2IP_Addr[3]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[4]),
        .I3(\IP2Bus_Data_reg[31] [12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[13]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[14]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [14]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[15]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [15]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[16]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h2F00)) 
    \IP2Bus_Data[17]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [17]),
        .I1(Bus2IP_Addr[3]),
        .I2(Bus2IP_Addr[4]),
        .I3(Bus2IP_Addr[2]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[18]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [18]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[19]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [19]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h080F)) 
    \IP2Bus_Data[1]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [1]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[20]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [20]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4909)) 
    \IP2Bus_Data[21]_i_1 
       (.I0(Bus2IP_Addr[3]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[4]),
        .I3(\IP2Bus_Data_reg[31] [21]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[22]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[23]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [23]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[24]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [24]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[25]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [25]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[26]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [26]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[27]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [27]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[28]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [28]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4101)) 
    \IP2Bus_Data[29]_i_1 
       (.I0(Bus2IP_Addr[3]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[4]),
        .I3(\IP2Bus_Data_reg[31] [29]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[2]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [2]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[30]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [30]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[31]_i_2 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [31]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[3]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [3]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[4]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[5]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[6]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [6]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[7]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[8]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [8]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[9]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [9]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[9]));
  bd_43c9_build_info_host_0_address_decoder I_DECODER
       (.E(E),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] (I_DECODER_n_1),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 (I_DECODER_n_2),
        .IP2Bus_WrAck(IP2Bus_WrAck),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 (is_read_reg_n_0),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 (is_write_reg_n_0),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(S_AXI_ARESETN_0),
        .\Scratch_reg[0] (Bus2IP_Addr),
        .bus2ip_rnw_i(bus2ip_rnw_i),
        .start2(start2));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    S_AXI_ARREADY_INST_0
       (.I0(S_AXI_WREADY_INST_0_i_1_n_0),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(is_read_reg_n_0),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I5(IP2Bus_WrAck),
        .O(S_AXI_ARREADY));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    S_AXI_WREADY_INST_0
       (.I0(S_AXI_WREADY_INST_0_i_1_n_0),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(is_write_reg_n_0),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I5(IP2Bus_WrAck),
        .O(S_AXI_WREADY));
  LUT2 #(
    .INIT(4'h2)) 
    S_AXI_WREADY_INST_0_i_1
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .O(S_AXI_WREADY_INST_0_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(S_AXI_ARADDR[0]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_AWADDR[0]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(S_AXI_ARADDR[1]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_AWADDR[1]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(S_AXI_ARADDR[2]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_AWADDR[2]),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(start2_i_1_n_0),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(Bus2IP_Addr[2]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(start2_i_1_n_0),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(Bus2IP_Addr[3]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(start2_i_1_n_0),
        .D(\bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(Bus2IP_Addr[4]),
        .R(rst));
  FDRE bus2ip_rnw_i_reg
       (.C(S_AXI_ACLK),
        .CE(start2_i_1_n_0),
        .D(S_AXI_ARVALID),
        .Q(bus2ip_rnw_i),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    is_read_i_1
       (.I0(S_AXI_BREADY),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(S_AXI_RREADY),
        .I3(s_axi_rvalid_i_reg_0),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(is_read_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    is_read_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(S_AXI_ARVALID),
        .O(is_read));
  FDRE is_read_reg
       (.C(S_AXI_ACLK),
        .CE(is_read_i_1_n_0),
        .D(is_read),
        .Q(is_read_reg_n_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    is_write_i_1
       (.I0(S_AXI_ARVALID),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .O(is_write));
  FDRE is_write_reg
       (.C(S_AXI_ACLK),
        .CE(is_read_i_1_n_0),
        .D(is_write),
        .Q(is_write_reg_n_0),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(S_AXI_ARESETN),
        .O(SR));
  FDRE rst_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(SR),
        .Q(rst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00E0FFFF00E000E0)) 
    s_axi_bvalid_i_i_1
       (.I0(I_DECODER_n_2),
        .I1(IP2Bus_WrAck),
        .I2(state[1]),
        .I3(state[0]),
        .I4(S_AXI_BREADY),
        .I5(s_axi_bvalid_i_reg_0),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid_i_reg_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[0]),
        .Q(S_AXI_RDATA[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[10]),
        .Q(S_AXI_RDATA[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[11]),
        .Q(S_AXI_RDATA[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[12]),
        .Q(S_AXI_RDATA[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[13]),
        .Q(S_AXI_RDATA[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[14]),
        .Q(S_AXI_RDATA[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[15]),
        .Q(S_AXI_RDATA[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[16]),
        .Q(S_AXI_RDATA[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[17]),
        .Q(S_AXI_RDATA[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[18]),
        .Q(S_AXI_RDATA[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[19]),
        .Q(S_AXI_RDATA[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[1]),
        .Q(S_AXI_RDATA[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[20]),
        .Q(S_AXI_RDATA[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[21]),
        .Q(S_AXI_RDATA[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[22]),
        .Q(S_AXI_RDATA[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[23]),
        .Q(S_AXI_RDATA[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[24]),
        .Q(S_AXI_RDATA[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[25]),
        .Q(S_AXI_RDATA[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[26]),
        .Q(S_AXI_RDATA[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[27]),
        .Q(S_AXI_RDATA[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[28]),
        .Q(S_AXI_RDATA[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[29]),
        .Q(S_AXI_RDATA[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[2]),
        .Q(S_AXI_RDATA[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[30]),
        .Q(S_AXI_RDATA[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[31]),
        .Q(S_AXI_RDATA[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[3]),
        .Q(S_AXI_RDATA[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[4]),
        .Q(S_AXI_RDATA[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[5]),
        .Q(S_AXI_RDATA[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[6]),
        .Q(S_AXI_RDATA[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[7]),
        .Q(S_AXI_RDATA[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[8]),
        .Q(S_AXI_RDATA[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[9]),
        .Q(S_AXI_RDATA[9]),
        .R(rst));
  LUT6 #(
    .INIT(64'h00E0FFFF00E000E0)) 
    s_axi_rvalid_i_i_1
       (.I0(I_DECODER_n_1),
        .I1(IP2Bus_WrAck),
        .I2(state[0]),
        .I3(state[1]),
        .I4(S_AXI_RREADY),
        .I5(s_axi_rvalid_i_reg_0),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid_i_reg_0),
        .R(rst));
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_ARVALID),
        .I3(state[1]),
        .I4(state[0]),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(rst));
  LUT6 #(
    .INIT(64'h0FEEFFFF0FEEFF00)) 
    \state[0]_i_1 
       (.I0(IP2Bus_WrAck),
        .I1(I_DECODER_n_2),
        .I2(state1__2),
        .I3(state[0]),
        .I4(state[1]),
        .I5(S_AXI_ARVALID),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF4440EEEA)) 
    \state[1]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(IP2Bus_WrAck),
        .I3(I_DECODER_n_1),
        .I4(state1__2),
        .I5(\state[1]_i_2_n_0 ),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00FF0008)) 
    \state[1]_i_2 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_ARVALID),
        .I3(state[0]),
        .I4(state[1]),
        .O(\state[1]_i_2_n_0 ));
  FDRE \state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(state[0]),
        .R(rst));
  FDRE \state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(state[1]),
        .R(rst));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
eQemDSd2oOgt3ZaWxjIu20Pvye5LbXhaDbdWfju4PUnsAhtiZY7XgOC7JR6npG//n7MfwdGOVecP
P9kzogZmeA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
C6XBEU4ySeeOrse5EQ00qx5rUimPe9PwjTQ9ArCQ9g3eAoDT529qt3liimX0SztYUPkwunEZQBjH
LIZAYw03UZrBF0hBgwO1JyE68M2lxg6eH2mIjELI798s5q29Eb4Xx1GDAem3KbGLGzMRvMG/l3hR
t8t7y6EnMUoLZDkvyyc=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YnDzaQAALIapXwws261GDhlsolnMP2bMW6UNdGGg+xOWFeC+UOCNQYMg08DXFynb4uccizKDa9lf
lzVkV77dfSd7Smeqfz1Q5l6tWsijySxkc1A4LuTpm5NsVi6Rukn7Z+ZuudYUDj0kDzO2tykdttZs
08SsyfNy+sO4xPVRvnGcQ4La5lpFoXAaBbRVbM9qyNwKpd2PLNz+kqzLsR0D5RgdkMUJkIJK0+fU
/8IWlVRcPCm5NSApeISS4566RIXz4e6DjotE690i3kAUgGJWKbtcgYLlQEGvmbVX+kq/87QW3iWP
lV7rZToUM7JTEqzJM0yvQvtiEKClAY/4R5GqEw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Xgiv8tF3ZKSn2ubYsbjJUmvVSFNDf2pcfUHE9/NhPOFuq4Ii/vbtgVcImMd51avyll8v2bTik2L1
slfiAwmPPcCviN6paSCDOZFOw/3uB+MR+wOl0GcgdIFL33jnMtlzCKJRrYq/pSkBYHVfW9ez7For
2ng02GmJKAeoa+/nxz1j8B/4iU60uWGwfdZFq6VZyhECDUHCSEeL5ODqfQTzGs+V0gPRB0f7B3MU
afYG4PwjaphJnPMP0YGlOY5UETjm5VsUXeUrc4WtahJAjQafwwZ+8jwhQAnDhNs4eKsr6gjxqN5R
+MGWw/EQGxXWq2NTiQ1kH2xMw/ZnvAjiBvfRfQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
h09fQxpeMOgtRWnULt7RnjnDCsqiLGiwqYhD7B0cPlt/Kd4HWwoxX1P2zWLzj2dPrrga55ps/6ch
VBSdDlDXGmcRfK6eY+jaTaHTVrZ1OoUmRTvWsZluDEM2/1Eu+luao9UPRdY+HNDGiFQu/wcBM6sv
aYB7WoVBLdKR6GZjJYM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DWyFZ9oDTaw6aB9ROLBRifxc04MTWVtNOL5OuYl0IKZCkjFRcl75jPV2LMlNlWyc6jNbqtco2kci
WB7ZFdVmJACBYCNzJ1MajU1Dx8GZ6ZfwFanSxj8qLURm9wE/opF8HdkQsBQUh5hSvv+++JAKbOTy
miIxG4WDLxDLCc3ZxxMRfEDSQpinkpU8XIf+ANMhimnmafzJmkGC189eS9OUfYN/q8i1BiGDwurb
4z/P/cvJXLCTC1R34azVsvfWMil/U/j7mQwvU+/qPVMjEdiMt8vtvrXDAQC850z7i52xcTdrpm/B
Qql+4EOukPmt+GXfxI41672LBE6aKzogMpuTQg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U2P4zdHLmBdxZgbpZiCvtU3wocXv7fuA5WB1pd7dkQ1Ow9u4QNnI8qQcHG75g3VQfodmqt7tBdKg
b4Pb+6LA3PXayxU7N9eDIY5gGhHZQbCvQDriRwxex0tsuRlewzOoOLOq0Q56erl/6lF++kCChYUm
0qkuwIWJZPwO1oBaB4nlL8C9s8Gh042ATQwl/XoB10O0aU0vNvKJtCo/7PRqhmEWnrlpuk9CVzpT
gHWRkMyj4P1Pd0D4Sdc10LTeELL+jBWTGATltoD5GBRwgO/FbAokglJVl++zlUHXZ8CFB+LZMlS8
3RyN9QhjhN02JhCZyNe9L/pPtvTxg4eWzwpPsQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oQziUYfKs6rphpZ5TBdnasu61LQ6vV5AVbIF7HO3J1fIIyypEI4ae2CJZTd4rg+CMHN4NNk5BS2U
C+mXS0PcP6YDhnNeToOcvnRASl2yKHjzZDE3ASYxgBTy3Du+XUrboUYOw0rQt0vrWEacA4+FELg5
0RLxmt03BbeZN+H7UqUa9PekIRuQ1fT2RcSQ3KP4chRGOT5YzswTC8FyaIo9DyDnwLqTmR5wGyjC
h3yidypdrDEIyhCqbgBnhDlAwmChWoSuZQUJATR3ohEpEJZGBwVxIcy1IVF5fnX5s+7e/vCXokHZ
F41rdczuR52BDFPPNMWGOTwSZNxjNdr46WHA4w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rdU/ltXX759c//UcCOAEaPY+Q2Ybi97wIInsATyy/DPbLPcEK3JYniuzpNUnEMt6vhRO0I+s4nKJ
VoxQ85BfxVT86h1S9l1rS6HnkVRvkBhARVWbbMqMSi9YsSezJYUhAp2vZchrtgywsmfyMLwf5kjK
vlpxr/sezLYW3Icyrp96825h+hU9XOnAU/QTbPgdsmp+eyvUQhDOKlHUVEJvWNWcS9/oBRH9kR4D
jU5P//5W5RNQmtwfnKznwWiAIf262HIkDmcJ+ctQpUEnVRGroM8i1zVvEbXPA6BevW8k51mLCXtF
gh77W5NeE86b1HrYUWZbIntrLqA8vDsT6IVlJQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17424)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
