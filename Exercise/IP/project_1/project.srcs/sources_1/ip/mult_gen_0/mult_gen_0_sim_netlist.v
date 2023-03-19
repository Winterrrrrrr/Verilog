// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Oct 11 10:28:47 2022
// Host        : 马华PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Winter/Desktop/vivado/Exercise/IP/project/project.srcs/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_15,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module mult_gen_0
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [3:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [3:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [7:0]P;

  wire [3:0]A;
  wire [3:0]B;
  wire CLK;
  wire [7:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "4" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "4" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OUT_HIGH = "7" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_optimize_goal = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_15 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "4" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "4" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "0" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "7" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_15" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_gen_0_mult_gen_v12_0_15
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [3:0]A;
  input [3:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [7:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [3:0]A;
  wire [3:0]B;
  wire CLK;
  wire [7:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "4" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "4" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OUT_HIGH = "7" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_optimize_goal = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_15_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
KGg++J83s0yJ7o2/XMVLkRRTRjS0oC9h86tQjl1+xE1m53Uwmm0+K41skiYHo3Urr6lMQ4q2jL5Y
R/1NOu1WGg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jCBx8aLaNWpgdwu0tsffQfmLNKET4Uy44Upxw9AlkO9Ma9Y+tqZHrHroYhGJUxa/dyJZ7Z0HDJ1t
hUhVV6SjuhVMs1NLM1MVw9F3MTSW7MB/qx7j0WAj62FJgoxsCtt6g392p1JAAosX8yACeLKiQ0KF
mnMpugzqSRDI445k7So=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zdO8kU0uCj5Mggk0oLUcYcllNQJVD7vxIj25evesPPwBvXuv6EUsbKmUaCAlFUyG0YQ0mxWxXmzV
V/dRqKxqZ1ZI8+mX4IFaTJSCcYctMZsCl+2EWvQQHakV4QzWuCyca1phNacrRJfur8Ssc/Mhbez3
GLQCRrSfyBYyi3u9J+SAJRcJapyB1syXXhclDtup6m1z2C5S+NX/ql6kVXkcd9P+C5ordunfutgU
6uco8UymF/9QFYiBCWlTkHAgd7DH3dCI1E72N2H/KpX0/0xFBk++NCVuNucOwd9h4/hAyr4L+SI0
6Dzmn6kaBO4lnMAj5P58GIeWO/EtqrPeWg4UJw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FdbUT4bIXyyFULrG0eEn0kqX6tjVoWssNb1FURO5jvyN5IkvkkDKCSLsd4J+2RE35ttJ20+4IZm2
p3H/UGCxkuCYtlZzovVpVf93DlhFUM2iSGd/L3evdLLL8VYETZTScGFdFXqiqe4ggXPHQCSEPD+e
PmMIJTGQka0DD3H+w+9t5Po/+M8b4r1y70l3Py7aYMeCEsZ/yHRmk8szsOjUbwvFEJk8SPXrEERg
EYMIrbryPHXq5E2fCL7hTgHa+bzIdFQOc2/8wn8YMVTmIJCZLBZDXvGSSm16cifWzXKHbPSly8js
RAoD2yYva4rr9cUy8jEyEpUcPGnaJXBDnB7lsQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eGYl/A3vBqVYodgklvBXVlduDkQKDOe941//b/7D71XaDbW1Cqv7m5eqy+I7bUTyBfnKRV6WeTtg
K2eZlSMADPLNGmIEawb1T81kHA95L4SgxCaMDbzt0t5pO+IQTca0KxjvPFPjj860AZ/Y4IJCgD9Z
vZNfcSeez7bqGB9kVNzxh40hdeBm7XY8a+5R/yPufF2S8KSSaiPSvYwD8yXOBzVoRhqA9q5PWKTd
u6qoeWMnQ1r/hIDsge5oDE06b6+zC7odC460K8KIOtKzeCrfWezkynmD7wBR1fdIwh9FGe2Uq4lO
ZbT2QFx8Ga5NQIwIIZZci/uL4Tw/7+CPKEoddw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
k1GN+kT7KgRIHJs5Cw+hQb7EZrReCsvXgXeCjz4o0RyqpPm8XlxoPCNX4kR8BSaVxBTPm8qGrOj8
IkQcLP4XpLGNjMzOE8knGvgjraCBhhY/bboSihIYbJYXuKW0k/ErxcqbMup3dsmp8N5M+ZYpiEuF
88HraBjchDshDh5xlcY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jzBUDUoUQBD0tzi9B/VXNwpoyjUIKBzxkVyikkxc/QHKpaIlgud+eCQD6psG9RUWZouQN8CQmJEY
0K5qgvfm7GxXMbjLUwnVBRg4Uzfc4OTySfJMu1k9/qGISvYwf4r0rzMMp9aPgp+ElEwTGx3z9N0A
vWNdEjCI2mqdxmP3Q9AYUPTudILppELRMP4SJijczuRIhtAKpxFjTP2gL8zQE0aq1kkWRZfaHW1t
wV7tZ/jCUxkX8uj8DL6Bei6oBC1nTm/FjPhi+htKla8XNUEftaqUre2/0Sxhsxl/FTAzaex9fCj4
AMt2l6o0FpW5JlLhGnTYhWm/bgsyGCPBg6lSjQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UenQ5L6AQdWNtR0xTveWTZgDEXJAxZsjXCEMMplNo+9BrytdrV9FP7Wt9cEkqnytjq/FiyN90IIH
J1OatCnKEimZSv3+mcSetxVZ8kE/rVB9c6qcBqtnEKS3kwHjboAQzaxLO+4KObKSCl1TGE2Jna2U
nOpo4ofBRTbYYACJnI9Prr+mS8JUGOdeQzAmrQ5MzSUCGym1nm2WGV6APTPOvnSFEYUJ7Dadno1G
I+KezJaSNakgznScMBSNKqJZq3zzvmg6GvkWvkmqhBEWRooooV5ADpLlM4U5xXuDEquOoOksNHyD
/O8yzwABGCzmz661aDSRdnEp433snGnqUYghXg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pLiD1IuzmFl2ZpfyYShMwsKQ1xJBORpRpFL3798Jyd1HMfoHlsWkaOv5YXkmdFQDKtplBzBxN6ib
u0SH1bcwF73It1c/75Kpow0mlhpFl9pgY+C1o1dN+pqtnlKnpcJ8OxOQJ25ws7z4ri/EpMR1888H
bRphOC/NaQ3yP4Ly7n/Xz3bJERhSvgy5DxYQ7DvJfsVAwMaqb0Dr2sPVZRJUwzqapbuGfifpwasF
rpqBUCQ0aF+22BgCGAyEZFLlzx8p2x6fbBh3KTDzQ53Jb1nh7DV/ObonuKwZdDeLMg5AvvV8F9Rf
mH5R4d46A7R798WOvV0Yvro5uWqikpGg+YHtMA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19856)
`pragma protect data_block
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
84C2bfTqewvmQ9r3kfFfJFT1VDk=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
