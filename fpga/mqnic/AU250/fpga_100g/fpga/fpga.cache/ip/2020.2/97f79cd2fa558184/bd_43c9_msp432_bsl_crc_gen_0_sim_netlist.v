// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Jun 30 15:23:13 2021
// Host        : cream4 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_43c9_msp432_bsl_crc_gen_0_sim_netlist.v
// Design      : bd_43c9_msp432_bsl_crc_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_43c9_msp432_bsl_crc_gen_0,shell_utils_msp432_bsl_crc_gen_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "shell_utils_msp432_bsl_crc_gen_v1_0_0,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset_n,
    s0_axis_tdata,
    s0_axis_tready,
    s0_axis_tvalid,
    s0_axis_tlast,
    m0_axis_tdata,
    m0_axis_tready,
    m0_axis_tvalid,
    m0_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s0_axis:m0_axis, ASSOCIATED_RESET reset_n, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cms_aclk_ctrl_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TDATA" *) input [31:0]s0_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TREADY" *) output s0_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TVALID" *) input s0_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s0_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN cms_aclk_ctrl_0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s0_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0_axis TDATA" *) output [31:0]m0_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0_axis TREADY" *) input m0_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0_axis TVALID" *) output m0_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m0_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN cms_aclk_ctrl_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m0_axis_tlast;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [15:0]\^m0_axis_tdata ;
  wire m0_axis_tready;
  wire m0_axis_tvalid;
  wire reset_n;
  wire [31:0]s0_axis_tdata;
  wire s0_axis_tlast;
  wire s0_axis_tvalid;
  wire NLW_inst_m0_axis_tlast_UNCONNECTED;
  wire NLW_inst_s0_axis_tready_UNCONNECTED;
  wire [31:16]NLW_inst_m0_axis_tdata_UNCONNECTED;

  assign m0_axis_tdata[31] = \<const0> ;
  assign m0_axis_tdata[30] = \<const0> ;
  assign m0_axis_tdata[29] = \<const0> ;
  assign m0_axis_tdata[28] = \<const0> ;
  assign m0_axis_tdata[27] = \<const0> ;
  assign m0_axis_tdata[26] = \<const0> ;
  assign m0_axis_tdata[25] = \<const0> ;
  assign m0_axis_tdata[24] = \<const0> ;
  assign m0_axis_tdata[23] = \<const0> ;
  assign m0_axis_tdata[22] = \<const0> ;
  assign m0_axis_tdata[21] = \<const0> ;
  assign m0_axis_tdata[20] = \<const0> ;
  assign m0_axis_tdata[19] = \<const0> ;
  assign m0_axis_tdata[18] = \<const0> ;
  assign m0_axis_tdata[17] = \<const0> ;
  assign m0_axis_tdata[16] = \<const0> ;
  assign m0_axis_tdata[15:0] = \^m0_axis_tdata [15:0];
  assign m0_axis_tlast = \<const0> ;
  assign s0_axis_tready = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* IDLE = "1'b0" *) 
  (* PROC = "1'b1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_msp432_bsl_crc_gen_v1_0_0 inst
       (.clk(clk),
        .m0_axis_tdata({NLW_inst_m0_axis_tdata_UNCONNECTED[31:16],\^m0_axis_tdata }),
        .m0_axis_tlast(NLW_inst_m0_axis_tlast_UNCONNECTED),
        .m0_axis_tready(m0_axis_tready),
        .m0_axis_tvalid(m0_axis_tvalid),
        .reset_n(reset_n),
        .s0_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s0_axis_tdata[15:0]}),
        .s0_axis_tlast(s0_axis_tlast),
        .s0_axis_tready(NLW_inst_s0_axis_tready_UNCONNECTED),
        .s0_axis_tvalid(s0_axis_tvalid));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
Tav2HCRbKSdQvj0AATo0a70QcBYdoyGanJFbCId8hgJ5JFwee8p06t9pZUUef7/UP62+hCa0sMHm
SMe8uGSBbw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
GjTD5xxRMoG/QtM2Am+kLirAWTp3w9IKbflaeaQq46RdmtZjdYPMUwKUvCwMPYkdi7JT6eod42j3
n59qaoMvhmApQnRhMPx2SxOv4jsWDTD9rasjbj/0IVukJQ8zF/kkYjsgXYpmEjGZvWhJNpVSUiLZ
UvEHJQhcG74B2lBD/LE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
REvEOjHzmXaNkcxbVYOicf66ucFA+JdWkyJu75wDeXJgfZ5x97N5xDtu30+ZeAm3qoYZKQbo57bj
izEstFRK3WkNvXBRliN/8bOlbHUklikmDBEfpqc1zYVGrD/wka0/VZqI7lJ+UfWJrw+vpZUQHo56
51Ctd7CCcpOsokKZPZ7NGG4XMcA42sFmwQkcwPYu/RQaya6bg4zjjJp2CSlzx5xWtc+Y5Dm8PVT7
cyqlM6WVBVkRopdxKHi2hgE+e8iHo1iJmJKDiwhWyREQ7ahmZqw1/hyuJTnBQidbtEcdt6lchuv3
y+Pd33YXrj1tqQTUm0suDwAmUz2ckc4zkm+EOg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fBAqL4r+7qXqyWh4bRyVdPFUDRTY9W8bdQXdJalgTxEFYu7ZTIk6wY8bxfbp6jHrlSj6cPOmTAxl
Ge2JijaT4YOoIh0xWDMsulrY6dKeS9I6sDEQkvER6+keOVNZi4Sa1Knqdpe6MbeQCT57f7I93k6d
aTZ5irAqH+b99Qwd5XBC8MBdpTPUelIjuFpls06Nxh/46KHUYMoVT2DpxrJa22mD4j8cnnfuTOh7
DSc+9peZJOLArv2X9y2pmqJsQXfbfLwy1kOGQz1HyS0GvlsQ8Xb1WvvDc1UR5XpioRF2cZ8ES45h
B5CrgA69L4FoNwf7nCWajq9+Dp2ySETcGHYKEw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Kg6QsGLsZ5Gks3YHs1GeTgQtNkyf6Ae4cJqoaULJp2UgrFD3AOwlbtX2wpUy2BlVBLIws9jyGXwA
cMTFZF1jOGEoGy/RGhQuHim1hJbT5Vnh+PM1ksN4kXnuMDNzWkWJ3Sd2FMZEYtpiKE7Tyr07UxE2
oYZEBMU0FIdDjTNRv7A=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qR/nS5b3JIKyjQeHTD7Sb+TfmryG0mzcINIJSNdtiHXZLoKOclUOO/6bEVxRCMDnefxFXI370bcv
RcmCJmxGPnGbmvJL6nQPYMXFnhTiIPbGiQuRlT2xO6nWQ+ck7t0+Ka0lFdwWMAdPosbFMRI21yZK
2LyKontjGdbQBbG/NveSIMQGcIk0VtmiRgXnSA6CGrcxvVLVONodjE+JCGZeYkuGJArXll5Il9/p
csUCHY/OpZU7XaZZfKZ8d4RiVhpmcGYFmoXZI0RbPs1GBeqek040D0duI9KD/nxALbDkli9VOPd3
a8iOmHQKGvSqwwHhw75v1lOdZ0ZCB9BqmsB5TQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pl5HoQP33Tyv5RbAEXkI4zuJyaYPp7PZKGeUpHuHQRwPaRktUy+ps52hVUHdiU2BPob6Nujhcd3A
zKgd4QSTACeumKdLe748cy/8trvfZLSXW5oHybTzgq5x74mq50Vq/9Pl+QLDY+QSALUXbf+5I2+S
GLlN9o7sQlNsFfOYsydUYBhPTkuzZF0uHxEVVXA1YLn3cGWcYJj3I1BK/wl+HncL7K0Vz2mi8VV/
u57v7InkcLcavutDtJr9szz4z1JDy6X1BWdfZYnEK0snNiUVZYQ0YqN22oPr1xsMjVw1jxkRNTPL
86yhiDZG9NXwC23IcbsAZmRV8yz8Sbrbzi5o5A==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZcHu7VUldFDLvQrJLEUFgIVhka3cW8RjeWe4kh83D2gng4/NOvcBTq2rWUygIhIu76YAzpsCgbtD
I4kEk+LzNxPL8720afXuzuOOz8ExKObQH4A6SZqx9z7ntruYT3PotvjnRE6R2/LSbDD3UyGJNnVX
Sd1H5nPgIPjfECENK579Imvqn4ifRkPTolN1zBzzXW73hZ5JKraoDx5bGo0mrd9krxbURbZRCMzH
cWuvhnmN60gp+jI+zIo9/7Aj0wBCw1An9HZDFgMuBWOO5vf+2njL6vAcUP7amYUtYEJj9zcwE7CS
OT1TVTSY8fenZjOAFAA+HHi0UrI6/BGN34EDkA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DEWPcB5DDyGIfSAwnBhfExrexYI8WGlsGpekLhDhhjNZ+CbGsXEJf5yB0FD83kln1c7CFAJOECOd
SkUi9uHXoFMcxgHkUJgf0FmLO/mk3Nq6iF0qItTBAh6oBswA/PKS9QoIRyI/wx75v+BLOlrMxfGD
DdopxYim2kTCA6gOr+HlySZJTD50BTJbYaYnBKEGqoaXVORIHYK7TcHrFq64/kQsG++BOdt5yv0I
PW8VSpZRGZj+2EvUYr8zyj+a/HraWxm0xhew4SXrRF3aRVm9FiYR/WXW27BxSBQqjsbpAMRu7vlK
ue/LUN0MK0cVsCbM01Db9C2ekwAVYMopzAp6eA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10352)
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
