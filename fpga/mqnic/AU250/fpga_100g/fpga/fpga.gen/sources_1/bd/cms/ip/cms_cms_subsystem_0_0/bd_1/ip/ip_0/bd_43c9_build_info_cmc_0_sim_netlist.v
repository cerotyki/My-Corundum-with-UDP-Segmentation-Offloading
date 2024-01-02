// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Jun 30 15:23:16 2021
// Host        : cream4 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top bd_43c9_build_info_cmc_0 -prefix
//               bd_43c9_build_info_cmc_0_ bd_43c9_build_info_host_0_sim_netlist.v
// Design      : bd_43c9_build_info_host_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_43c9_build_info_cmc_0_address_decoder
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

module bd_43c9_build_info_cmc_0_axi_lite_ipif
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

  bd_43c9_build_info_cmc_0_slave_attachment I_SLAVE_ATTACHMENT
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

(* CHECK_LICENSE_TYPE = "bd_43c9_build_info_host_0,shell_utils_build_info_v1_0_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "shell_utils_build_info_v1_0_0,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module bd_43c9_build_info_cmc_0
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
  bd_43c9_build_info_cmc_0_shell_utils_build_info_v1_0_0 U0
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

module bd_43c9_build_info_cmc_0_slave_attachment
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
  bd_43c9_build_info_cmc_0_address_decoder I_DECODER
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17360)
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
