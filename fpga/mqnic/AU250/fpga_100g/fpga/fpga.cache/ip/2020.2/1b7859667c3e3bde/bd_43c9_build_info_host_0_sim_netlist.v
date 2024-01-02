// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Jun 30 15:23:16 2021
// Host        : cream4 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_43c9_build_info_host_0_sim_netlist.v
// Design      : bd_43c9_build_info_host_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment I_SLAVE_ATTACHMENT
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_build_info_v1_0_0 U0
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder I_DECODER
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17408)
`pragma protect data_block
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
ovtJYxgE+1+IKtvoprTb2UoSiMhYc6A=
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
