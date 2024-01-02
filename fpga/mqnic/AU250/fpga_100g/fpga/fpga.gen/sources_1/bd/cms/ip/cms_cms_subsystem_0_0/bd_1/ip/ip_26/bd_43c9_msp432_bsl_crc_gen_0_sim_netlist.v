// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Jun 30 15:23:15 2021
// Host        : cream4 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/junghan/corundum-original/fpga/mqnic/AU250/fpga_100g/fpga/fpga.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_26/bd_43c9_msp432_bsl_crc_gen_0_sim_netlist.v
// Design      : bd_43c9_msp432_bsl_crc_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_43c9_msp432_bsl_crc_gen_0,shell_utils_msp432_bsl_crc_gen_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "shell_utils_msp432_bsl_crc_gen_v1_0_0,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module bd_43c9_msp432_bsl_crc_gen_0
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
  bd_43c9_msp432_bsl_crc_gen_0_shell_utils_msp432_bsl_crc_gen_v1_0_0 inst
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10400)
`pragma protect data_block
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
Ep6HYPzo0dbPIurd+jWbte9A+PQ+yeeubS0=
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
