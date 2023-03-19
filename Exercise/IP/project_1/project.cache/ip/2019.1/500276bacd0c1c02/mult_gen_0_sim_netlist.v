// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Oct 11 10:28:46 2022
// Host        : 马华PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_15,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_15 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_15
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_15_viv i_mult
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
aPvOOX2NBudMo2nroG7lIVht5slT1pwKsYuqlpehuCi3d/sl5oSkyzbSKru3JEpIebu6dVfD67WM
nUcgixM1mT2ss96HpBJrlDZ9pN417Kmz05uvwctGOBNgcTH5qdJnI7GT3NeQyQ0W+ZzZT2n14Cq7
oUOrldn49uqXNQyuXHNQZJjO93ewq/yXpSEVdnZEKodmCQec6yKamWnZi8MTnXjggC1y3FW1o4uU
XZ2LYpujsakmMWvyRRvZE2SXgja9c26WHD4yRkzRhgKyiwnp451ndjv/eQ8Acgao22eTcJUZ1mxA
lHD/sw4xaMmxnAt8XurRjf+pXwZ+NexBNZ5NqA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hEyPHd3WS3EhvWesmaI5orjmNYDisYv2hWMT4bNu5HyJOC0RLydekgRBKxasWCy3XlDwq0msEKgi
Y/DTZrIEqul1bAf0xUZl+9UDmYLnFAtX+7HN/GY5vrIDUNd1VsENGmlVMCtPL1Fa+kZgxR3qgQhU
+hdzyLblPq+6tkTEHU2k3VUPPJf7036E3b9n2hO4gFsXMREpweLkoKAH2ukTYQpd51g74iUakrJm
b3QUw3P/Z3MzNxRuPHWR0ZQ4Dh8R4O1IWUx+KPu7vAqX9NfhFUavbEu/iwCuaSidevW0ONC5Yc8+
8X1bPyBvl6ccqferap71O6XYxDu2cF5T5CLycw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19872)
`pragma protect data_block
KRsXG6us7NzG2FFG8VTSQQEyPVooJFEKd4FRbVrahHgqu0/h3z+E3jawCDBz1e/rkzsJ6iMMwD45
ijolS4POpSwtDdlpksNbMgeKVJUU2qtHNSSIKw33SJ8fd2GeZqeSBgPIwk3NLpJkj9P98IWnZ2hu
Ep5MnmuazZpZQ++Ru3NRZ10vej1k1GUhVk5mRpmAJlCcBNyfYTwrMBlff5PVHNRo27G7XDwyXPqa
mZXyQN6c4bxgtqP2g6nvBYXHtyhc6I0fKHGd5cB0DxleznqJwgSCjaOHjhLqWW8qFGdU2gLQkFeH
1hAAofExed8l0Z0ytmANzt0XrgkAYcCx+fwRqHva3+5qstvx5/5tu1N2j/M3xBSqArc/Ndfw+Jce
OlftNAvqkZBBf5AIOrL1tx8fVIbGGOlJPjSeYs/hyjiPlA8lZFiqTMtp2AAHQ57ACELxsLrN82vU
aB10c5A0gjvVv9i/AiPMWqIqyFggyBV+yDGwuPLYVq5BvXHWADDYXL8boUeQZ0ANOB0nQgCcOAQB
TKWyP4idgU5WI2oXc/VXLNXVrCp4yfdCOw6Eg9dAMMLh+0J2eG8UfEMJe+wm1V1k1fFmiW6Uk5X6
gIjyHtlzMl7/BVNUHYae2qDszZvl+mSK1SMBK4KdqLw496wX1AxhwwUn0SA0i5tVODhwuUpWiiHr
WnXMlqKuR4DXCz4BXP0AMxocBWNrekOqpxek6OpoOPvL1syPL/E8rMKoEn5wRrBmm4yxsSG0EGk3
8OX73nN3h8wf7o9Ao1KRmUej+y/+Fhb/xeKJFbl6p6oJR0+UsDmW9GN+lzDipfll2fEf8TB1ywb/
PTpwxFH9ths8wg8TMid0mznvZMnuh0dc4hvkxwAZSmBrTFvq938V4IlVsYL3CDo1oKCQnER4msWb
U0xFog/zO153cpJKO5G5ARUgArWN53A4yNfgxOvuxOscwt+oGZagP573wcb/Q6uKY1v6fhtA9m4t
9YE6Yc37PAJ48aQhlVfFdiur5ekKnLw0dYVmdIaaQjTfhyYt5ptAaT5ATv8+c8bI92zWBYu97eag
k3m38h6L/unhSHLGobGqyJUH09jc0Nu292+zvue1DveEvYqjZ0TvytLeLlsC3gDM8DHaRzgGT2Rs
1aylGyswEC4tAaQ9f5tQYiNuda2qna4GaS+/qoysORtdkxRR/asrYhreymo3ix2Sr8MiweN/IfGS
SW0j7uYMWz2uwEzVhiDX61Y3PxriEWxksnAgqeQyFDWmO4gA8GiaQjT1VA7e4falA/+fP8sNK4OT
8xR095cKlnhwl/guVlrzcVd2+vNFx4bAtIr9PWBZ5PzJHMEDNwfvexGjHcu9P9mRxnIZB0bDyNvC
dQ+B5RSOhd7boODOKSyKpLbm5d40aGzR53QxeeipDdqunxHoWry+AKPygrPssMJ1FoXd4RRAvnQh
HSWkU6/YxQBR6uainh7C729scerK/ECPh3HzW098p4Y5vnleMiWw8BymyOWyWnhP8/aVlMydHygi
+49JIFKlwZPLxOWnN/YJQ2iSZ0UnRddhT5R8a6nKCwIpzza934kD22UK7FA9E6YiYbxgXxgu1otf
4S8UuYMw7fRQNXHDluvBEodJbt6dY5Ae/PJWERP6o1xV3IF1XevqPbwxHWxQvW85P6BHc6H4iiiQ
um+LoUI7yovQdsfJqNb/I84VVBFiNLXBC7ZQ7N+e0Wqse0t5soCjeoNnsK0gs8ninCltK1U77Ew3
ZW19NbL9IHSCW24NuQ2GMt5T5BPU6vbT7fv7iQoyHQ+Gq8mwh56po4GMzQsI4/Kw2FrqruNhfqAW
XKTode39bhxIOjKiJrMHBgOksk/bRAv6NYeSTpicGnUjqM6deptdVUA6oGapXzO/+NwZI9PVgtDB
VU48Yxn26vESICr1C5H1OJdw4KwxtLRes8r0OxKvxKqditY3vdVBK12r3D2RmwnmEVGiDF0zCiXa
dbvkQxiPYaAfRbY0A952BhAwg0MvhPa2EWZwSfez/rC3WsRCVTwe23PwyGAeKIqrCHucJRH+wW5e
cIW2zCwu0IV9MU5Zej0Y+fbiUSTfZSkJAkAKhkhJ0d6d7zC+KVlKvMUbb34gF13LtrjPQGYd6uFz
whJpKh3/uhe0+NrMfemzdOM09bQdbxEvVz5+cBj8OecTc38d91GLYmyMdHYPHyDTqTdQIfGNxuRc
TrUWRwV8QxKr/QWE7aHCcAWAOvPltZ8KEpy2bozvg4vTl0wwhtA4Bhupl+dAir21YsTgWe05M39w
qqRkrzi04C7ee0fP/zPUjihI/rLL6ixg28UCYdUec2zJlLAL1JEubvviX5syegZscMXiQCtolYWX
OsdblKYiCf+Kon7CE2tMGeEXGv5N+rwsiDjBOvnG593WV8whiA4RudeUB34JAPYzMWNxJl+sejmA
1KKOT4Zb3QHHX+7ElxWcT8tQPUoM/a5Bo4V7ga/4YHIA+FasdZdzdbrCWu0e77t0xkquG+eHRlEK
Rjac2q7fCADbDifR9yR7ZyvAJFwVzyfSNyVlZwXkrIhbqpwS5CF+PJE/5KyNoVD6alYKdL7nZIto
5NXrHuE+ThdBX4ch1TOPXAEJkzRLNgwCVQK1QX2NxWMpPf4M7KFRFYymr7R5YTc1VdPoPgOMX9fA
mO3rGhG1BXT630wqm4syufP18I+j24Cnx0MPkl6Qquz22p2a7MBgQ0BSDU8ntnFG+wnUvrJHy9Wt
90WoJCyOMaln4L27KKPG8Re3fUhkEMX60bC7UrMDHo65oU+lp+3Hy7htFbuFaEWNiKjgAizP7KPe
fX5+NT1kKL1AAL+oGlP3kxhj4QFGDmsPrya520m2xO5EUtH8vC5A943ORYal11hKsHWncxXLMW7Z
ExNvxEInVV2LkoOk6XDDKO2UdKDzVcDRL4rFk2b1dEMf9ej4OCA8HZZ7NMYilXw3ZQJHbK53fmqR
BoBXnx6Zpp6DrJ5JogGQkah1NOt/hmuHAXvUAVZrdXieJ9YNFsSK3e8Ma8mUi0r8U0217wN3TE+x
0f8E7Io2BnxsnsR4FtVVSX1+xYU6itW6wpLCb+Z5eqIK8tvY3bRmhzXPpYSs7mM8b64lfM+h9Uk9
wN7QRyLH/ZMIFogDeRdBp2wvy/oJeVfc5Kp7qMJiQ8NG6jxrCJpMRkPLbaHXghFhJrmUKCmZfOLN
46vrGvkYynze+65aRCZqCZRpBIIpJLHb+yzNJ2Y2qhDs1c0PIBbDVuzczvNG5JyBR9I43bLsTvaw
NrxJROOacIGSEesnUh7IzYQ3iqTKjDZowWTO53A6BjWOc7bFAWLGLcItIaNjCmE7uuMjyZzuH6dd
9lYyd8yYBJrHj4aldXRIM1TDoaNsspB9/3DNONWYPnlI6d47XDN+LWVrTgatLFz/hhnabaWbLRPt
mTGmzDfbH3kp+idt9lWuXE9VGRQWi/B7sHNjXLYxVMPUQ4f0bCKQN6ws/zdk/M1FP0p6f8wjeZxd
JclS02IetuU1i2D/mUbXLKTwKZ5gOIDjr89YKbsqPmmntlrOzXSyaRBntm/gBJtig3UtO+202WFh
JjN1aBKwJfiSavm05KyXrQQquGHrXdQE+oR1yyf1LtadHbj0qcnYrMaL2CUNCwh845+8zb0ddJKz
o8GCYvruqt5fzZtNVoUtrRPvULLDKCnvRksB1NssFysPg/4iDIWXQpQ9K5nJH5FSPrC6P2qeE46m
GYo+btB+ehzz68ILnqvKt9mMNQ+Au875UrfjcooLmImniM5Rn6rpOzR/3DK8XnTqbO0VcBkSuvfj
dAb7WJUrlrUG1pCcX2JN3z5Ve6g5/qO4pdptgGKieZ4i5+yVz5ShpXmN0MK5EwRXGCwQlBNpIt71
CPDlyxhThOc0R3xAJxOmhoR30mrJkrsYEL8nC0T6m93jVegDomjUa/sKJy/y6iJb3i1pKyyZ/R7V
mp9FOgZH71rJSILNOxvGbcszftgYDzYI4uVgvRWSDpMYNSY48bj1PMO+IWYuiqk/4RV63apOMhs2
9vIP1njGqcR7zDil1uXKH4i5pSMIhwyX2Z1lyP42RwJnP82mDXuZWCAig3VRlLDwwS+IG8AvrgEK
MQBsh6qEavCJxJ5jBO3/qhjxpGCrSwSA5Q4AlNYn/tTPzGzocZYJd/fQn+5jxFYd5O121jt7pFQU
f8QAmoSyysnlYx1JpIfvLtybgx2OjRUBk3/YnjVLE3BFDLzkf9W9+qZXyN9gokhNFwr91kse4esi
WIGRqziHBTPCUuXAkib0x7EiULaZfGC4WTwiop6UExlWB+q03lwpFV2MRQp+9nvZlJ4axO2cvPa1
df5woX2Bvm1gAknaG+dPMlKp1qkvSLoZmR9D+cZyfgNALgk4Wn20qVFfBUigItVs+1rtZv0uXe7D
3B/XZ+k68zW9Ure3SZyK0F32g0rJNqeCuge+nYMJJtQKz3I/cRvnI35p4EsiLiPBCZwGML86O8eb
qK4Ynb82fZHeqmp50cxvmxOh4SBbkCIrdceJXKpOuFvcSs55t7TKCA6VHjJPZZ9xPkOd6AqujRl0
zXQW/RfwmtnbYY9JuMx+DDfotq8/iFVJikQiqkwsWTbrODyDas+C3YwTbCrWI68mp9DVuxejaqk0
RCvdMWUIZaNT0tIilVrl6M1E3Un9yqVo7pVDk1wMYjBC+pcXBB0HdxlUWegd8zLfkXHzovAO1i60
19w2V4ww0Nhu3LTDf8r30Fdlpfdqwt3mQZjCVO1lhPoBNnPLIHQKUbYnab5xahyfbnyE8a/Ukw5X
FGTYe4xFexQdAaztZfV223SgsO+KQ2HrrtrwUwTPo8SZb5/rQJtUTuKfh25jOOI/kkhvseBbZsGC
7Y0LaYOtAlt1D1CoFokF4JDfwcebQuPZOUUB4CRvd5G8yPPkVNghz4SypJZO23qsZbS5fPaLX+hd
by7wKqVlct6/cqtk8ROG+Cn+ApXHUKezKGr1VX4jvJgxZ0vc83VxcO63IFAQwNrC8jd0RgLqn/2w
nzxbyoPwX5StvGIgIH6Ah5dzxxU2yY3oQVUENLT8DleNYcQB/iNnm71rm8AArbmwuBWn/di+wqrX
xTdwyVd5gOmr1VRU6MbVj82IAQaCLHMxc2wza+U3mPrcdpxmOtUzzihCzsY82U9MqB+tsXiwejgx
BQs2C9DGSVhIZOMTzZBjSacdsDw3HYmrXenzWfXzZsnYUJDHwjZ+fcbPu2EKKgIS2HV6DP8qUCyH
pWnM35nvsHOI4ZO2ahcHZykcfTz8Hg/GGmbcR6u82cG/3ifTqTHSryPc0EyD2iVTo10094PFqsda
HHNuD4fBvk9mQad0wubuJtmkQfyvTLqRLlEhEqloqn7RlCifqhsj1qz0T0TvkwNjsmq4RduwUMHN
D8hjP7ijFzOijXJKvaiJcl6M4qeroXAOVGsQsHvbW9qsUqd69Zg568Giej94RKhbM9HzBBEb6Ifn
7PkAFjG4AVIH04p6y75JBA04x+n39+NGQCj1wUaBlpbC5anO7v8Fl5MzgWXES1tvOwuNJ6Tk/7yv
xt4pApvMLED238rM0i8Rz8wPktc6FlBpM1+Jymx84UysbJ3X19WvUQRkbSe8Id02PDWbHBuybhop
ntK6JqeNNjWqMQoYc1qAmUbCScdQqhRNWoJQCYcYCd0xjGPgiQnAbsDy7dmBfk98LhWU7tV5uWwB
0m7EPU7heHLT9L+qxwi26f19wuGpGSLeFZxeYgevugwqb/UoJ5w4eguY9p5LJykCx8jtNkq/Zddm
NRwo97fndlTT3vHSZzEFQg7NJcFOYxjiY5NXdJD7L47t4ScCW9bPsnQMjQduTdb3JlRsaj4X3wSA
2yvZw0W+aTQBi86X3KG7Z3ihpVRRWv7ZJaN5vsjHPByo0HSuH1KcJ5vIZQBaOD75kqVc3OJ/0yhZ
h+C/yGpfeQxGuSasLQBiza1v4/8iqgQ2nl5dUBWM6H8GR435e4rh+BH6M5EXzJ9Lgsa4+xj/Vf88
Ons8ALpkn4fX8cHlfuFGzchP6xre3dZqv9+BXcj4suIVKDa5aSsakSeucuPOADaPCHGS2mVwjo8G
zM5dXiBRaZS1vtQCRQQekstrawtxRA1SAUDqUki/7M91AeIOHlxGCAccJCeRDREmC7XVplvyY1nw
7QkjNNHk3fOkrpLnIdeOu7s+1fnZYF09Fiivxv0lLLd3aQH3d1MOiYAW6AMbvjQVzrHVJOV/vBSI
dxRniwdIDX5c0TzYT6LV8/QaTOq3g58cj3RWxIMNaUPo2mBsCT+beyW4nKvKBWF+riRYt4KJrp87
RGcBudxlzXJ1kBkgDWLdipAtDWkgsdSI6bodhxxDYzayEHOaWM0EBXBYbsV0RUG/ejzSgsCl2Ewb
zgtA/jlmxivbBm5J8lhIqWBA0vbR4xd5Nca9V7kWT+hhzmI1ryA4IitB+EkWudKVhO4Rzy5tkrTx
h8XOKmDGOubA7yH9X/8KS9Phg5XOHOEb/PHLnqpOfFPOwTwGPGbm7yAuVUil2wOs0vxLUhnyLItp
Ox+SZGYh7ux8ctT1tKmCTEqfacXcjHti5ayCB3+ERIidTH/5X8VTuQz8MwJIYc1A8i3HjsGrMUyI
9s8gvDdDEzEKkM558jQC/M8zOtyQoW8UI58/EdGvqMil33rSaEHQwlKOWxtQjQupyOKYiTn/qrxy
q/PszR8M0oXXQsKpqmW+XRHeL/VVEHMFJVgOXOkax9qPOD4YL9k1fx2yiiW3q/tFMO1UBpiFVaXf
pikYshsVFclEeE7WBSpoWgWVxIkw5zU8EgJCdGpUMYn6zcGW0LEJQB3uS/NrK1iNOBGPdPrVuBae
8DlaWUBING+JzIZYZJLMH/qwBZKf0QFgZyJ72N13Qjox6NZF2Z01zg+WMqRIPlrIHXb9HzNnxGIR
HCArlPVCrJVCyGjB0kWMZXYc1TPtbK01Oe4i1zz/nbTJwsu3DSwVpnI4dllH8xUN2mQOV0iJdI0p
U9ArrUMRCGmRHBxPe5mImZ2NdtginH6jo72Rf3n+4pvTsmEnMPcCcg87oj/VQ1UaXtOH6c4HEuT+
VEy17ro/kmJefDZFiDPLyOHrCteTq0+uVtuZlHsmreDV0g8At3YQZDOacdWvJchx8ONBjzUUL88f
a+aookcAQCgbLhSqVyGIsaeaHacpWVZv16NLEuRdAaZ2T/7v5W0Bto0hUtFCOqdFzZIRjFYfqT27
a+GNM96VaM1MRb21jaIBP39kG0ip9lO6EFmSyEqV4YYO7virl0bxRLsvBrZUOOWcW9EC3RMUas1t
V4jMiLUcwXIXJM3gaQNH4kCDHzabbcd29gXmU1o+nql2FEsSLA1td51ygy2XlkP8R0x0nGMIOK4z
0mZh0KuzCQf+hEpeu7SSNnupNXZigIfVCKycxEyyWmTQStckSUYKjxTjDVeijTKBGbxWFO1D1G4o
fKz1IUYW3rVJXoR5Rw7+12ykEDI7IbRK1nT9Ynk9eGmrSOJQ4H5oPkU5Ant1rlZ3jNLGDcNMINI3
g1SltLSDvAA2xGwbLGrrP5GrZkIn2jdDqCRemZqfXXGmiOfegxlLcOq1UYOSO56/6C3ApUPzif0+
NeQctTu0W6xaHokMKWkHRYNp74/YvYF480zOQfIfCwqq3NbXqU67Hb3oX72Gb7yGRaxoszNP7l9z
nxcw/N1pxM/FyMZUDzkHvv8TeikpKQYXuJvhXc5aDjU63QPoydEeP0k2fIpSVVjTmF/eYC9S+GZV
dCG5HVpJJm/wgTEo1pl9aFarXQb6heBFV8AyloG33yiwJQwH5VAgoMb4LAZPm7FL6dGaETPGdPL6
8cuoRLgQhXOlVzmm3z5gpE8X8ttuqYkdPzMavbVvW6mS9TW2YJfJUo3ka+J4P4wHZS3cTUbJBZLN
cmvrQ5xNF1U6pRGGg0qHbXb2B3xK5HVWaKLQbcpyAkCLMzZOWc7oX1HsSFvktRJaqFiJtUn4ZYkV
ACZ85ySseHCDRNe7oZMWs0fQzOanjGLxh3algK5u5BDHEsJ2i2dZskUB0SIQYuxkKMOE5COrTyGm
+P8q9ySxRM/n053cjZGjBjVB4loavNcGdWznteHn0dv6ARmWcoXVrQLvUsfMI0tcOVNiGscoteSJ
LGcou4JJNrGwPGZ8+nTFcq/2Ph9xqbaOYHZt5IgDSnqEMpiukTTK6nX8E8Vaddou11CN55q+7vlJ
n51vk+Y9lKqwzCajOXPmi0FgCNKKUlF4Ip7hGMvzwMAoWVE106l2o3KNAi6SNHzlZ4L+OhHIIZpu
IrUpMk9MN+o7WTQsnleDiN1q/cPUg54uhK01r7vpR3OQ7Q0QkEVAZu+vR9qv0qNxkjU++ZLzZl3Z
WXSM8ZPBuP+B/4vXLLXObAWK32DiyO9mwn4uc2dch4T9AkVvZ0PvBNZKkIzVg81DVpWW5hIs2phL
/Wx3WkrRo2whL9YQii7clYfHXze0+FRzNhorng6Jb8Xrl55wXAjEfmC3XLKkknmFdlpWH7sC3ykW
6wFLbjCfkcTEbNv1yd6O4B25Ry0b6bFf6ZJIlQGsxRuo/NZri9ffhTgwS4T81J8jXdLlzKifm4vT
q9KpB92WdYt61j3IkDWEhU4u5uzyHFDlLZRi9/VCxGMvM6QnKPKr8BoMrN0Di5JFcuB6uQ8nmNPI
eHFsshIf20kEgSpGJY9WbcznvWWiUMrwszJRELjCa2Rg8XlamOcGP8UTMfyRahe1OsG261woCNm2
h2IiWXU7ll2G1T7PoUPUKdrLgIhh2DzZbmN90dItwhNdmr/cbkCq9tV6zVmIpb+XYJ4p9x+S5NX4
OLR2hyWgIip8ADI4pRyng3hXc5A/1egU5r8bg8NHRK7tUxfp2xHTYRJQ4KAqi0hJ/NJe/LtEUW9x
OOTwuYmVEO/yXAFfML61woeX6SxCTpXbCTurOVvInzX6irMGycwdLp5cL5j9PxF4IFwW1yZHKcmK
2WkTpF4Y2wlHAd9zdlg2mFo0MYLrunJ+RVyl2SYpx9GLdg7VCR0TSU3N6EFNdIbOS8UOlS9tTvPF
Q7cMVYadxT5KMPaAcLA4YZekzBALtVJiV4I+Q8LFUp5yhYi90gWdZZ89hgC//t0qlI6A2zb/UgBS
T0MhfsF2rfDM6Jme82Y6K7gFrA+co6OE8ksZM0Qw80+7mhDh2Mh2ATAgE1ltMBrh5oRZjTfhxmVT
pHgetka8bYhCXldzQ95xMFhkDsju/WeSib89gSo9nNERWmFc/v1d0fqU7BP+APaErH/5sMjNUmhz
ks/wjmhW87ngfAnxCs7pMUXPErUvz/U1cLCWZzUcQxlCpgs1aXTtMkFrt/AqWE8UQ3OUhPdIYiqN
RNqmnH4+ZY2h45WZ+8k/QBe2Jc0PWYgO2CHj91Z85Bl10g7LqQ5+E95kt+cxo9s/hI4nkPeU20bg
EftHG2Yvkyl1b7Iv2IgRHHFGsaJm3kL0m1R3/kqm65UpGkUngdyt8ygb1RnSXzg5Ebp7bbiOT8sK
ZRepwCDN+z11dfh8s7K43PT+GWdO30Gj78m4jIYXAZ1Q6hXYHkeAredktJh5lPwinBunSRZxWuVY
4KgtABSv4mBSMXQCZ0M0G58aCbU9WWFRDDvJTRvC0G3SvMYkIatkvi6iofsjj4ejM1qgIEwO25qm
S5G87PY78CfWNFyD4cd1VLCKoKkb1riy/dwWOhTMjQhnFUN66d4SIqCBozbHxRXvoic+uSaIt3EV
Q4g1WM1Rr8dliVRUr0QWDsh0efedNiWDsIPmwo/WZuYfJzTPqS5yKzTG1jVg1TKHlD6U0YyuCR+e
ND6Wu7ADhqi+vls5gNobgqKk+aLhz9+FwX6TVUBNvCMffzBfJMCcTXKLN2G5/2GYWThaTDItwfJl
m1iE+40LGSnXCJZ1Es3CLyZFBleUMCEEcYPGXw0yuT2d6QayLxEeOfOlkdbnHiPQ5AWrVpbhmFnU
kKT1J9sXDHk4xcxWQtIopcO7cFu2fRkxEFh7jngG0k4+qctAEY2BjmYy2V/rBlH5hAYuyU8h8YTN
ortk8kvuR2VPWD7kWgnk0EwZAQiROej3V+2iVPCndJDAjjmcN06FOMWfTCQKpN0d2ARCyBJGgJwp
kkkcugOo7tDmNUxp8urG0dfLiLkV0KbYrKunddSgNKmQmB3hWBkhfRdkrvHTYmVhFqzvKK5tEo/o
h8F9qb+pG84zivgSgehjUcyd3il6sVtKnOgZVefHrcf/07wHJbq+Pg3+6hbDZVMFTSeTHLuWwnXe
5PrO1q4eS39wOIFXeR78z8w7pLMKkbOQdyLtRhEd6ykZTDtKPjHWJEdPKx4vqiNi/Azw3W4TvXi9
nKlF60RgTXFWu/uTSkjneGdct24IKjG9Z1PS/I6+Md22HUVTHYsFCXHxU9NlLH5rDAor1bkwNK6q
nTiIxweot2oIBojyFmxKGKVmkPx31UmOklLtFZ8VUXBHKsExUHconNyFZXdEoMesRizC+tp96JpV
oZGX1lgGRhDD24wSU5geMTTjVtEMHoqzYN1JMmOPOA91HLG6gic+oivkKAcIYOpWl0BZp9GSXKxq
pMJQJczixSqkhtJKqbb0RosgKZyMViPR/Gb/Y42lcYjJhuNIP70X5z7MCXAEo0Ws9+W/dH09/aL0
jCYWwZIrDdw9YT2sWq56k3bfuob15YLpBY+nM0m8UdXJ6dqSjttrRn6ZILEMvvN2C3x12jaS4ZJP
nWo5r5XyOijS3g7Wlgi9ZziJkYbQQyoRi0pEeknaC18YFxXPq9vjHL77AG+rFWIZG8dp26xf8dm9
qDqgBvgbq78ZcXF4nCkfsRUfwAaaLEPWWeRVU03kqJWvK+tDW1682Ca1mqNNSpiEmcTCcvXHxln8
GBtyEir1HQ5Oi0yBzNq42g9uzMuXZD/5csJy/b4X0ICNlIPBEsvQTkJmlFvcdHMedL+HpSDoK2o/
rAnfw4LkeVGqRyWiy2NEjpoPZlNhLQIzMrFETh20tS2Fh/GXPyRrT321iYa/EnAxSvcjGns/5W5G
Hb9SRnHYQiUdNbh46xEbCDEe5uRH8eQVt9prYFyjrR8+iO5DeiE71w4PilgzyoUOREtx3ONJsf1R
qpgz5b6RHMmOONHAaaLMShFDKn8AzwkXRUU+GS/LS20NZv8F7GjmZbg1fN+yG5vLOXPUlJJjESvG
xO4SkEcVM9ZltujidS5df9QJSuvXhBhGjzEh1RM++9UHsrcAyNLwbPZv0pFik4r2ME+Q9+dFRe66
eS/AfghYWpJD7qpQPzCYt+q/SYnGA1082TXy0amQRTN1hHfuMgqK7SuMVGq1c30eOTXP/Y387tB8
9hiuSZ7JRju5/ZZIAMa0eLBlKKun4P8fECOxlJ6Afb+4n9k9lECSjvWlA2AAHpHkhqmHLvHmtJnw
k9sMmt4qUe01qfSyPDoNF4h6IfeBOdI3UhYlKvIdD++Aw0vtP+Z1EOYjuAQe5mrmKCkQV4hE27Pf
XaGTsgX4lzHj056GXFwABj2RYx/EJoSVPqGBoDKgGodz9io9biZq+xdss6LOSNqzTPJaf/WXJvpi
R9m00+1HB2CDV1NMBAxQ6Lrf0jx88j4XoGI/4OZ3Z4mGugyV0Obk5bya3kGQ5D1CapGcNnxAXB0D
3RzJt3GdudKUtw6ZjBfB9+TG3IZWFXe9yrQJFFDAcYHV1RWJPpJKqDn4HNa1Jvf/gt0yyVylcAQp
fP1mxaZ+m2EqDgNgMV2VDaQ7Yzej+R6MaBKDNDxsX/WTNpOCzcGrgmvqoPteBiPEeTG6mbe0wVXL
4Sfr8UmbsnQSrnZV5R+t7Nwf6EiXewREQSCrmsmIxMyz8MrUK4U8kY7B7bzzvD2sNPPJN5O73dZK
AZ1MJx9lWD8786Mq5URT1baobV27bp1Ovo6SFDHyjsV4SAl0/JzzQ0F5g0FRkVcrLQ49npRkAEqV
Rnm+LMH0y+oRpvj3+2Yl8pxayI3i5T/H+4bAtcyHtD3xIMZ/JAHiWG6IgsDp+wmtCTLngQIe1CNJ
ZK/t4318xgg4eayikNkZ78YteiGRzF1r+WYlFT/B+KmbDubQGPaLLyD9W6zto1DN1Hzv4AGaTomf
gzfy0nhy/etE+GVrrZwg/R5wl/h9uoq2Em3dLjtEj/dHJWGdKj1FNURxramr1iqyIPp4xoxmsyuD
QUwBgOJtinCZHuCtNsa9uWL2kht6PKRon2AFEKiymRI9pcw40oML/X578rVeW1jq5q9B1qMPlfIo
1ffUwhYs6eQmSUchv426dLhd6CTBPPKaeslr0ku0oHBvI3iL4qjaAsEoX5HF5cfQHFRvMYvc9RQZ
aj77ro8id0KH7P8v9doAyu8TjqZ6fI17zPiBhU8CiUHO25n5ovjPjo2Xyi/kfwggMCgGwLLoNkKG
D/gguY1ZOFeCM7ec62OWSaJ2ee79KNZZgcUXXiw/7CipcacbkUyPM1qyglyD7+IVEM+ReOFx8VHB
B9EGbEec4IdhrIClbX5OVArhwqL7//eDSdd+tbujf0YUb/Jmm80/EQhqCEmIwBtWGna+UkNtRqli
8NUPC6h4najUqKUQEYvEJl13HM6ErpvcRirH5veMs2l6SJsggh1/ROr9CcIKEk9qnDCtMfnDOVc3
VTx7JrWV42LA25k0tGi25tmhGnIviO1LE+yGfBbPI4wmZjFMs/auxjUXaKJz7x3pNgoYgCkj2V7e
bCi3c8/KRpfyXpuQVprkxlj3xTe9vL2qzbSeeSqDF/ZNWp2iQC64+H7AF5GKD/cOB1ecsZRg/Meo
ckpbCYKiufr0YnbCynxNJ5XDrCxYptGc2dVpNRWHG+m0w/c0ygZvUkDZsv0puqCr2kJnLabal+mG
VPo7tRWQYNkN8sd9IZMLDJiS6BvWvA+Uu0rA1hETybD+Lk/IQZQCx3QEiU7j8xCRZheVuB3lcXJs
W8VuklTblxwmWnlFouedzOv9/tSY+SPU2IDtDwdAsJukBjT+6UoZyVva5yfmDnA6lbq+WPKLE+B1
RnppJG0GPK99gwSkTY7CwHRsBnDaR72pr+R8HWx5vQVtmoNkKTBMOE36oTmHoMDmIyuRDHaYrfPB
kGBhadDXfVYU1zuJoVTCwGeEfOaz+JMEJy+iyYJ2LDNMSuBokmGL3yEK+zF01FiNU2f7kr6LQzLN
rk98LN+OGB61mGR7tWmss7u1AUun0ORZ/B+7C2uEdQGPO2JEguLSnxuGdt9q55tS4rSOI7gzIFp/
GvyrfkLCS2BG6r0sXXAiKT4PTwSLlS4Z8ZGAzcV8c0wc+cNYfCnyPt4NB6dnJ3HP60+dUk6pBmEQ
sURkX1+PuQNUY5+AKau/nQgOmjxGZVnlRNgElHiw/fqEfzQo0pnux4EyUJH35GXiFgwgLlFHnn+/
/z8T4TkDIe2ZuGHjSernPR2pFg9bcJTke1rMS3d+cSqHVcu0cIQYGv7gzwg0CgLBOQhf0UX11e/H
UpC594HfIFP8CFMG9aTkgOeycIMJFdHBUqaKJXL9uf7YNGFPt2a81tGIUAOvevC2MmuTylPpUiUJ
2TMqIL1B1F2ML8iIOpUa/s6GT65iGb+dA/4vuB35f341ZNo9/DrqMmAZfnUQzm4PO7Qlyc8B5Q8U
SaMTlwJIyCM2NA/KaTUsmssWXCUpvxz67wp92uaUzkiZX0Uqow5ZBmHFK/WrFMvleJZkEi8b3AO3
WcmwM5Ci+N3udqgvolwelJCnWL2T3diOlUvWtKGUb13NaipudcTqZBpbjwXkiVOC+LJoxm484rNh
78g9Q2PaSKsmRwWMd7Cx4XmMi0k/w+IQvHZFkohBaCTTQiR9ZqTomi0jmt2e4kI+AbtaaY3WdpLc
VQkqBZEcJO7swUgK9+n13hCPjn7k/TIZNs2B4Shgkz9sKGj+/u8PcnuNQ/xta27b44c67LxzrjbF
Hekb97nNmi1YNHXXN+XgfkbNZJDAgwHRaeYYob5oN4ezg5sQ7SBrzvG0IOUH2di7No2yzFureEwG
5wbDKQK7eIYDP1u6rY8Y3wK4koEAMVuVy2Gr0bB/e4tRZJW1Un2+vcI+6PZ3We55zM5bvvcA0Htr
rlSiGeZ4ZozsyU6pVGVmDsocOTe3DHrQiKVpemfwuU6MXM1N/ORbsaIoygoOlmlvUe+/ExC/JfoA
LyFEtF2Da1vKd9ee3ARA3JylnU9icOia++yIssWouu7GuEiLHxpg6C0JY7s0Yrjfc/of44Uo7Fnh
BgSbTVVxoGWVjRXtD/8Cef7Rf/GoySGP9LaJh5wqAMJj/Xy8SDiUVewTLD0Q14pH5b08OTZsdo0z
Kvj03o3LJ9L4CQUUlc/ksEuWgcsgx29ShlPgvMdyiBavWb09jToWJ4RfwhSb0ItQ4Q6xuMopaN6U
BZ5k0VPuBpDn5aHTos9s2Ses6vKxTFAmy2EhcZxALTLfbEE7T3NeyfpyB95AWRka/e5zSD95E6X6
ZBuuKWuEwQaOxvWPWA+nFgBN9y78pDG3JbbeoboVpvBdawhc1KS28bWWb34bKCJ5ivFFAgpR2O5e
qbjbTSQ7W8+jtmLw1nfnKWnFlsiRS+3mjQISHlmTL1i7gTHSUb8or4UEwi842WtOfDP1gNOKDWv7
+BSo78A0mmF2fZNWCaP5sHNW/kv3+qO9Kber6cq3DeWYTqkepXRyxj4cZxhiyls41Vm4v/7v0ygR
MR7h4/JJHUAKBNub2MZd9dn9osbsnBCjAIEpbKEFJdYSg2OU/7ZN6PpIiH+TeLEKzF+GtKpPHGfi
HLvD9dc7vG/BsYQE+mfVMKkXk0FKvjZLd9vSbcxAvj5+BkjcMGYPkDKufe3V7ONpgU5hacZvFlRu
3h8F0hcvoWv9f1RyvchP1z3IGq8j6dQCGz9nsNQ0jkEfxN6rDYsYOv4SH+g6O5mH3EnGhhSM7HvK
sGXEEDao+pDXoZA6yQljZ+kJUBI6O0teyus1B+VzHfJeHzS3++kJV3w9pQXDwNW7oocsU+pQHJiK
hE+ZjERrflD2VeobXYOJTkLitM7vgHzUGwWBhLNRoQ5nBlxfX6E+Hs9OsE2E0S8OWIGPWnS/IjQF
bEAKxm00u0di+7tTmyaxJ6t/sUAMXGCrzs1twYWqWXzTJrFuyDtrUoNMYu0lBy5KAkfwyQCG45xK
oPEQA/Sp3eBcXkhx6dHEBoU9WWEQZPgZhOLDDr/pRVRO3mT++q2OiM7h2O7tXcrWpnOTXzRkUQTJ
HoJjq+TQ2xOstmIZS5fcUr9DM7q6clNWLusulkdwj/eJ3uXshR04ZDKjzXLsT4oLNGSxuGyRiWAG
zTFV2UXCVeBmYYnj4l5pK17gF+/2ODBDy6+3EE/BUy+JktMOTKxogb6q9UvpubvWY2SvRHP42S7s
FY43WTWE095ElIo7kZeRnQuPgb9gtu/TnSCLLx1oRQKSxViAeNf8bYhb/oYir2Nix2mZcDNs9ovf
LBWgzyE6J8Hiy/VFToRxUiAn5QcxeGTF1MEbG/sUsjb0G/Y2oFugTqrPnZUaTgxZJyGCrYp/F1T/
fiEX0yb9TEilGmL9g+16OqvbkmbIHR6/UF2NnpZfgAZPulga4ab5p6JzMRZwSZ7zJMJOqTGLKlBX
fVIQ8Am1xDxZNqb5zam7P7aln5UzpOZGzjx3A7hh+IypotCuFfK+vDDWGzO9zxJ549xBYdKbWP2G
aKyXs4AcQpwwpTnC3yS0MmJZfpkZd0Z3t7fGJec0udpGFRlU8bRHZmZvoG9fZFECSXmnzWxWStyX
PsFTZlhx6k3b87HkeCwLEYMouaGNfZKZOl6tyVN+uCQ/skxOI/WcFSQN4f+CoATI87vRCXUEONe0
fuzdr0AQzx8bovtrBPk1fd2hjNnkneLE4DAL+C6YrdlePbd8C+xdMJv2tZGQ7ZQsjqewmz9sowlQ
VO7gLVJxn1GtTR5Mt7but4ohuh200oKGxQzUJNXM+0GBf1UkVLQSnnH6JQjTvRz5Exi6R3/3lyLc
JBYcBclXsx3ZffoCLFg+5Gq1OJfje5wb2Yo5YhqlMokiMeKmxDJHUEZxbcjXKe02l9BcrgWr0yZT
zHNrfPaKhjAGt0IuzYJGPwlKMQZ/UkoN9f0KgRyu62+2gOhd9byLOndJa1dy906dX/RIp59Tho82
CZ/i9DdlsfbJE3plTDQd2aDv3Ks4q5flp3h15ZmX8JNwY6WLxbCbEE3jWP5acY2oA0D5Q0jw7ahF
N3or0rinL1teTUSoaduWTJ9PtvnTm7rrhcbYyz717sCYT95aQT/L+tPSih1qRZh6qQbWliWd2TjR
dieh7xG6FY6xkbx4nyi8vZlq8lOTmvxKin3nu+fqOZ3CYoLdV0n270ixLf7kf6OYDDnohz1UVgsx
7VyDEJlyDgZ30x/hbfIrKQ5KK5di4Ayfq2KunWIAg3iiQQS32+2ATj9icjZxNixqldzLSsxI1qUo
/e8Yq2duGRlqHdCa63G70883tnRBBx8brmNeS8i2TY41V+KMruFb4KaP1SqWDo1fOGuvZgUzqlCZ
ZDwrJgd/dPAMo1VJcXpKLiws9z/otjcjV2PJzP2mwyhLiZwnLHl8JJ3Bg3NNddx3el39/AGE5TU3
yZvIWqwz5KH8P/ewpv1kqA0HjO3gR1VB3z8dnbK2tBHzCt/D1fz040tZbIvIzxcXrEWkt21VENjr
ZkIedn0UJM3WEpX0ey9LYhGcdj43dhh6kvCOXIxAxqm9PKzRu6jFr4cWaflnRkgcTH2m8j8jkynH
xMF1sMBsIhPy+N4qOw7AQ3glZmZ4/wYRkUC93RwQe0CPpG5EBIWHX3I2NnZdhFS3FrU24sAuMiyt
jluBa7rY1EJFCKrgMHLCkdke8A7cvjG1aavLjTlK//pBlswCRPziF95icHnnjnWBJ6k/041P9yPV
YHbNrCi1McB7SWTzLlIK4T3OmmqT9dHVGpyFS46vaB3iB+r8bTCFKJkKR349oiKBdzZ1gKmOD9Jx
eURz0BFuxcn+zEDvMSfMfuJD2EjFFLnCcCT61v6bW2RpaVYduUbVn/h+1wIJlHaF1Jzx+0fCEg0c
R2LRVhUu9m5eHrG9+AEc7f37U/v2JowUqfoyMtXv0vsIldD51PIm6uRnCkF5dz//veepUaXkHxT1
zUIjhbjl+KLVMetI67SN/VJWIx3saLYRjMdVaO3JGoOz9hOnB3e6sxnsdiLMdLB1Fi6inbUe4BCW
PCzY239wXUCONezy+VX0O3XdnGgjDyd4Qnx/jRXvgwg3obpPD4qk4ZNYYk317F7jMpZLpIyRe6y5
6EfpvC+K/lUG8I0FphgsNunuM8Q2mOJnEup8DbJgQsqPd0jARsiNwj2omwpjqF3GEFxbVAgDPBEi
XF97Iva2B//FzTBGFJkTvlsyHxBE7mhJwX+R+o4FjmwzhCAG+nY82oSRNVWcX7ZnqKckIkIkPcLH
a6jxH3pLlVUU5TIRCNnWKN869Y7L6tqf7hS37q48+h8njx+Dugk7YfuYVFSbGxxiomKLoOMhR4sL
d9/IlYjB9xmqeq3A2+VH2mUq+VH/EknKxHdyx6i/LV4XwIFW+74fVnGJXQ8u0JZRS0731USUELEx
nglkOAbb4dwis7KZuATdfsYEy9yZS+oGkqBueLu/FxJBBvSP6oINQ7Vwt5UjmV4dc/fY/7fzD+Zs
Xi0IbRgLeHjqP8YAqlhBM3QlTGz4Km9Yg5It9aISytphTgPpvMh8UexzUs5+uQsR4jlZeA4yBRgL
2kApyo6H985USQlv6ArSTc2ktGOTqT5yn5IRohZX2+aSgARRL7xoB+45NGv4kbZhkyR3CQOtxR2u
5t052WDgn3OBWMA7b+2P0AMThaTShAVMSqv2853hqiHrR5X0f065YqRvQMyj9znZuzm/i/iWw1RL
sLY7IuVkk37WTJG8sPi8vUlRNTi+TZ+3qz33s0k8tSaZ7Nqn7+V7j2WQTbbTPE9qtc8FFx9T+WfE
D8jDkyMH1rTeM4ss0LKYqgRo8FQf8IkC9jJwyZLALs0/b69FpV650TbtMBMo4QlOaIa8a1kujJsk
ArVC4WF+sY3s8qlwzho1HPeFMRASB2Bg+qiVzwPBV6jzGDnNLSNbOoE+ywYp54AZKvvbpfUtN410
AwkMK2ah9zE/MMmm9YnBH6aA+KzYMG2dJN+yl8hEAAP6p1UpTVnvUYj8vU14650bF6i/eLS8owkr
LdywWtG0MHym+QIECIyxwmAfK+7nQplBoP/57AwSSAj7HQkUma8ymnMhRP2SneTZQYTvyuNiMLUU
qvaKlvG+fqvrPA8Vajkva+RMebQTP+ieRpuGlTYDb9JnyXKafhbLSHu9+UIRnMwRzH2AsWVTyltg
IQrqzfvYm0z7Yt7txjsJKb+l9SFk0+4V5sXajghatzgp5naNEMt79iA/5V61hmE0R+2J2POHY78n
CpZfivmfKSySfaMuxNmhpWMOyWfQtYrQ7JsHf4HZ1M6Sm2jZwxi3l6XDIDqAlfyVYnWeLGTvWiUC
v2jT0zjN/cgqponLGYK0CNFuNmhixvKW5rl6jqJnVharF6lPvPFFoKf8e7weIMbEHSReYeuM+xvH
AB8eURw6wbTXqxDSN91difERIX+j03Slq1w951TUvRJJ/xo63ZG86oMFK+KCioa0hafbIP0E7Dpx
EgoeeAUdFbsy6SR5KU16oJQ32DgR97qehMZwbllAicSNgQpl0rWyNGBbVfqk5aGFSwNkX74jCXT5
nmp0cUofLA8fnO7i7UuRBpcFS7PxEMYC8BOyf1c1hzMhXWPKViNGs4cP2Al+Q63uNhxP4/++Ovg1
FTJFTq0350+p+9q0QFlxJPPQpDHDigqYRYCk63sngXNa86kKMWcQoUUhCh1wJcywBz5dELWYyWsg
oodrsmn8PnD5H7M08SqrFtBaz5f+ZiR5+TKgrh3Bo1R7onnTRtHU45NEUCqsm6XH/0qVjyHFHGdD
NXyXXcPDBXVgWm9AJZhP9HMyEwM8cOX3T3xQGSTjCOE79XEzTPakkoYdy0tkLO6P8zi6RkU2peSw
E/IsJSGegLEWaZuKyTxjGjrGrxPM80NI+ZoxjmlNF1BSunPff4eIF6XjzAml+2wdsoc+yG/LyB54
aR3CPZh5bEWb3LLNHY/e+IyMeHeh5uO+Pvaekp5lWui6uTM6TLiIjMWNkUR6BwABbrU62a6E3HDO
7OMTcKc+eQ3iyK1Z7hQhO5VEcNFQ8mW80hqheCVjw6XAVnMWgTSvAggmNzSijKDx3Ofrc209uJRP
BEdQ111wIQYe9kbPhs1bi83rmiJG0fYg1KXNtbnTEZ1QGtJMHU3sapNr52jH+EAK1c960ovQO6Yc
QVLS/bp2/04p4f+ydz9bqokXb4ASeVsqs6fsNZe+zAE6X5s4K/JBqpHcCiOTNplJeUTWAOfN9pjr
tXCwx5+p079OMSFqWuEbC8W9MuBbR8M56EoT+M4QsZAQEjIIl0daKmHT2twROy3J/Hj97WD6yX3G
wFtltonp1+aL90WXAQKiimxXM6A7jJ70B5Aa9eAxsE0yYIDy6edVO7eGrb59XkN/OpwipgcX7TdP
L9ez4SFNTLaCA3/KOQVEvVxaujltDaiWIVhGG/5PPYd84CTDhSFVXZTqAPTL3ARX4El+M69NMyLa
37z5omL49AraX8OZh7nxH8uCnw/8pXEbBPONaD+p44bfLqkWuc45iHK6g+LMcUDs9bw72+GIXq8/
FbYQq9ZXI81cbwnlx4DnEYnlPDzp3f6kshg4vjOmXqlO4tiX/lxqspWW3sGUoda8AMim5ux1BBqF
LZWo5hwEIgXgM2qc9xvVfv6ulVIylpivnb8NrRa8sN0HZdrOyUMDs4AC+yCwEBYr70NFxfelieLV
BC1ev5JVce26bQ0lohP8H0UAgFECAK9TUgPSOoFdEoJJ4lUGT4tuLgy2ffqmCMEJA67Y6pJAz39i
AljUoj0IR+pWwEXvELMff89T/uLVSQrDT5XLnpVJESZsQjmKBpPT3icgR98OPYZrxV62W4gsjOtC
jk2A1KwC6W6TJVG5F6MT5YHe8KSA9IoZyAgCfPv7xIUof7tMt1RLraLTro3TsgBtm04G4EdnbAca
SGsidomTlou2xLB82bcWLKlA0flyxzj2L/+7d2rkebZEHx1OUSGgJbXRPQBpZ+w7CaesMyn1awYP
TXiLZkcmjJKIWJc4jglCPFgELQ1YoYDmCv/Es+xdOf/pQh+F6DN7vPgsMVeXjlAj73zdPyaz+mub
ZKF+TijPHpEmEj2LYLjLKs3wZuSZU4r8VZrdjviG7kxr/uCL2Xx89mU4H/9W4UCPIp+OwfKCS1qN
AqC290Mp1tuGKTzFkTvWUmuqIdILmKnrQTjvNNTT4gH5RKhE2KvYGMZUOdQeKraN4AYrO5iTCN0h
byufxOGchFpyFkVjA9X0E5C8NvzTkg2WOFJuSk0Jra0Hph3lq/2nG0sIdzBvl7rNnkHP+o6vtItn
DFvYihb2+dDcs2S2o2vTiIVbl3TGpG3ikhFv3e4BNutFgbPh0Z2WchqIRJpLzExxtUt4lIs3CcSV
8aYGbJzg5DXNuBY+ItzmRKZElCBHyNK49L9b3CjRcqSZIALQ8ZcT7dQmV8WprqIdeLQ/op3tNfJq
xQj3YcFu5d521xX9tw5cAzAwA49QIv0mC3EwwtU5NAGW1zI77rzvtAbUvIUWTkyd+W6o8ikzcjd+
2YZ23njMBj3XD1IpQ7DEQfoiX9Fyb/tdYqblcFdPOFO/bXXYVKI+DQGr2yW/QyQkWtQzA+cL4Msu
MyIAcyTl6y2UNh9sSvWb6S294EJuLMpI74VErvqN64lJv6LWUfM5Vp/UcuC+eBexHAspO2uGydhv
quqH9kZWjjeRJIl6SKzgseobnPROJdT/m5QkdEAuZ9uZZ0hfPq7i7ZV+sQHZy2p8sQFUFS9cTr79
5scE77RU5O3OFTeZUgzsCqQg29i5yEOZUOYIwr/t2y9hBkXNtOkw6Frc/G2iUlOGHA7XzAT9isb/
zWecrXX1w8We9tSPXTrjs3UeGJpulP7B8jrU8qP2MHGtJM9RVqILUu9GWinrNjLIY3dhTZ0U8Ufy
rUuW3mLrjeW4br5uHw/afSvnY2wGn2ab502NiUxKTinY+EyOJBwmpjCQzkfV3MiwsyGHC4S+cXM9
LFpGn/M46s/2F7GgGeR1ycnyKPEOuTAbROWsD5UoxvNe5hqIVNtPaMFftmcxaJet1NllOhYVQYHS
yhAtc3lLw1HNvCguazFs2NUUZgG5aJ+IvaPo1oCgUiYj4mRZIwnCMSyiyhtjCDY5igifvfC+QgFl
G1cWtfOeYBG68e4Hf9BGNRjQxA1sfXnH0y+k8+lAjVT+ijvrfNmtoLGgUq6vPth7lOSvHni6jdDL
C9labIsDetbFhUEvQ56kiSUp/hJS+EqMUccilFy97NoLr6vkt1G1cbJfujCh8gvoL4HtkR6EJvTl
wWR0MpsUINpKeF28lbJqUBPK3dmVRSdBajUYybeHF4xReJVm+BVfFIj+dQ/pSYkvR5ns7193vOQK
b33RxS+/5juJ5jdWS+3wJPFTYuygBclP+45zkKOef+UDcP8WjSDWxi+8dVpIc/jczJJEOnGWSrdc
m/yzvMlJ17LBSBp/WQey6VBSVl2Uax8CEo/9NyWbbpJa2g1uLyhh38E5JnRLnpSSrkyHftxIvEi2
6skwf/Ft35PYoQmijXTKpGI2i8SIE5k5bSmvY6tNhg3Ogq5R/NCCEo+STwO+Rf9helagMG0WzUqL
Yr6Crae6Y3hdmf70Sg+UczL6SEREVjAXhPyc8YcACsQCQ5vLuoDN3nT4KrfoSaLbYZnwtnu5iziF
198Is+V/QOcOLW3blI0D2/Mgqhyzb5FEfnCCi9Us4B2wP9//Pcw2dxuSiOHc6GO51SVwoCYRIruJ
z7JNgaVDCZTfjGaTh8bOyfLUBOlk/YOEyPIwXRega/D6uTZHmBVUcyP33E5mWJXZszpfsDV1McfM
lxz3WxJ01uL4CFxhmGFVwAetZpFQryxNY99frrBj3DzuF9CuupzQCAHYDaeB2QfzcaR9Fws4ApAF
bEu/L3nICBXW8YSCfT4wmF1QoaQJc4GoIVOKNSKXTJc1phE0OICYortu0O9EoWxr2ygP/7KQo0de
fbFYaFa3PJgYgOnLL8+N+nf5gNkviPf9iTznQhbmXFcHeBYKw/3689hZEnIo94k6QAg3kdoVm5in
StIuyi4tkMm1mKUEKEgrVIAiVrKwhuEwuVA2Hed5gmPEooy0lkEkeBG5lMLGP/+bkDnw6HiGMRif
+77f6gdzfOgLUn/sLOHaaa4QSGQ63bgr6Zn5tXxluuAKy8rXj9A8CS8zeYi4xMdg3MOPXWPaxYPv
a3XAJ4HEdUDmnywVONLmWNOzpdNG10DX9h3Gtf4H+/Tc+XQPF+ms/hPvq3yzlfTN/BmeYX0M/c+F
5tChcaqL22PDOAEfw/n1LCD2qF82IQ5VIoYndW1rKVAPQBZ1LNU+HHYCk6qclynqDXR8bWmE/wkx
nXrqEsCWZC5crnXATWMmrnYk80LWt9rbLZjspx1yylcuGv5oAG8uGNXGn0hl4CPv86xtv+6YB+BG
s7qbUNc/E3RcMS+VF9wlvfC8yIEJM+X74gQYCeT5qooEE/ArSE7S/fj9KHmcUZT5uZ1sdZecHvTA
wzx8bQrMliABuPxM42sc20cQq8AmLbTuJafdmm/LxLDoo5SaR405U5Od4OtrnpsHd5ZaVeB69/ma
RHPpTy/OMXEFiVlK85K7ZeplrGZoOtITDDuo0x+7P8PL8Aaa73/z+5gPiwEm9eQPCd9ec2klqEgD
9uxXMFrgRCXkAS5UwHUhywNt2C9dIIR7FeBzzLQUNcIv/k0GsoxdhNQVARfyXs1YM6JMeGoUibrF
ONUF4PUTx/euc7JHT8kM4Eol0hedsKD/a1fTRuVMhtQ2UMsTa5u7zU8YnZr8/C6y9EmxC52zwP1J
ZpbMGcUQof6EismFkvvJOQQHlsACLpFMHCddgUZQ9lpS+1Pi+o9/j0oFViXmikVoW1cGpv6RiWEf
P29yRjZ+gEQtavfG7DeYjKadXZzNwiAekjxu6P234Cj1eCWHa/NuBNDQlL1jyTWLYaRETr37hHuO
bbiPpRI1CqvK8S5qZWABPs29+k9h/rLOq7u30k/cq0w4yzXG2vMnrj/8w4ZkW/AZdqTcnBU5NI3s
GN5Nb2tXg8qyKMoJj3YfWF8WE/x37nCHDfZxeooZwP4mHf4AN99XC4JLF0MX5UgNrL9qGjVepI2v
rMiwbjKYyW2l8Wtv+S7leVlvNWk9Lxq05ysmdAAD8m5AGMszyBveSyqZP/trM5A6ZjXqfwAnyYLm
fSJPOqyVBizPlhsapLDXABpVDNbgPmyPRbYk5tqYl7qf07qAEIMPsvaeh4RYFa/IxIQ5Cht4AwVr
GMKvOeCFFtXlyDPDlii/tWnczpd0R0Jo//9d1drabYTohizdtmlMOtC/6XCroKnFfCe43iqsb+1u
iQJAb59E2BLyr/rSlelsjoYkUnG974OA1UVfUqyEHmJxofWGFAv8So1IFuTj50nMHCeHtvkmb1Dt
0ihZ0gFeRugxdtoFgd3Adt8MjjKnm9CFBmZn/sRPyJNDJ8JL+lBWwrE+W00rmNMDVSOoFx+uzBxk
EPDe72sNtS8weq8yRLUHAdnGFPvJdHLzVyl1viaYS4oqQnny7E6cMuZctSLOpioMuyWN2C3A6n5B
ShTQviRsB9s/8n/UVYtDQTpE1FsfFpoi3b/rOgu63bBvdxtD5G5FSP3a1NO1lZ7OIH8s7g9jrodL
KNiDTV5ZhF+Jqzn24VAVOsRhhXTGGCj60ogoF3CcRO896FooPCfhurU4LblPSjnXirQ/UGR3vggh
zxZJ34sC1+nor9gGahqp8sdyiOxStQfzGIFZpK9O9v0W1N6cBlcZeQrNoYMZ+1lXtlKplA9YbgLA
Pg/CicMCwZwwWQaNIH7yEXZ7Ymg5SyNhuQbDFpl61cwSJqmE1a/QFqFHWKw4boT6lbgB++F5zjik
QKxQ2NWctyRaGNV1DODGBVZR3a/IuswD5JFBqktKidFGxALH+rOTZgFX5WkauI50mS84/BbXtpOE
0I3yldO7CnrIciW/5HOmJEnb5i3JXSQlNbRcSVnYOaiiDbwjN1wAebOypl4izZW79K6GwszIDvOz
2lD0+b3f3OqOYbefcO2KdjjTeaTB+98eeb5Un5AB9KgksmxouxPTwQ9nKmRcYvtuggEn7To4HviW
+VmRE7+k+5/8FqyDF/Jw/fC2UIcxn/mzSR+YBclcDoDzlh44lUa5/eqw2Q8mihoEDOm8p9VxNQo5
SBjBpWxJp68hmFpAuIbun01AGDJwkQIYJMRyBqMIPkX5jhBJ37s7pu1qhJGzP4Oof00c6Ze45wF+
3w/37cqVCNOyTcpaCro8cXhTU/p6CR1NvXbzBXGTf4Dnp630wEB72M0x04GtLQdqHjMfLl9p95zI
jby5nlHCdRINgIvWM6iQo1/PR+4G8aoBwOk1ClmSJGbuFHLpNZBbzTbfVVihp7gCSmzDOFf1hb8m
0lZU7RfksJ2HZhNka4punjWHq6Vx6OL7rSOeZznR7JWc3Ni5t/oIO33iQAn20OGVWUWHnPOqsSoP
SQ3ePdE7qwVKvOgauyO7Zg+KOXjP4NrBqrJgip3KC/IvUlXEUuRaTuMtzSI/XeOT4aITqBeKnDuz
3pP7nYax2QM3JCweMi6sJ+9JFbxWGgKRBhAQmPmgk8iFEcu09NJJuc7JF+3a4AxcF/k4Ma9W3KoB
hv0bHdiDpwVvJZFMICf3ulBG68SbGttlke4CMXBDt6gVgXWrRZ8U8dcF7P9AFPxiFrrgr2tiH8k/
xda9x85cQnRT6VDtjZABFAjROoL+zqXDI0SGdjKqSdiZekrRFVS74MfLfryKx7Lz4mUBMntejodz
Q6OuQCf7CBXMioqbngt5Lhi0bdImH1RzYry/tVx8wHlyUh1wpN8I2UjuGVWAEBIkGjvBhbEakjtj
Y+NzNAg2rkgfJMxyvK7a4gQSnzGmSuYQtFSJlPI4xm0pw3QnV7YfVqj1n8MqdQ/nD2m7bPKNGEL7
sbkvPNv4+gBBU7zaFHyezSTdWxMt+dLkS+IdBGPhhSxWE5bHUwGbyiYbfX6NwmxIi+PllBDlOsMs
8qocASVOIBSM5SqJGfy0pnNOtbVM3jAxjLXTZdVHyef/8vWZ38LhN8f7MGcMSEYZQ/cS7X/fCoUq
K/rfecOsVnvzXaQHbcjNkmIq+9SQQrf23SGp4iYOE+k3HSSjuPt3211T0nEHzaQZRyepB9JGPcQ5
Vcl4HvOrqGpMgnx8lXuIZDOafbqjZZ3ACD8mZixu0dMYyjGtBoAo83Hbu7wYap+VE/ApKNzfFDWa
civ9SLX6AGIOs6g3rlJUTeb52/CVNRuU4pyL3PzRzrkAM5rUAQrAjBCBuf1gzJ8JmUNL7Mr4NDSg
zjTUNk++ME5AAQ3Txczy+lkiJoSQgVX/M2iXHuPWFxc0i4K7KAuwRIH+5xKIqj1s7AWrxCw/W/fl
QqZl8tqqG+hxsKLi2U1J/Si0qDahAFL3qYUPMpMPskgZ33GMUCq+Bcs/lJ+/PhilV2FDcYEYc5tk
WaZZIRw9EGuiDjByTCI3YScAXMlHTAH1CKU0UuWHB1dTuYNQx9cTyaX7+AmTSmI0VZ3R9UPU91uv
8kYrGsrMuEqM26H59+GP8/QaLAT0Sczo1VaN/cDHY5AlzlBM+ykLQlk0tAnzgfOqIIwhh4KadqX2
ENcVEpCaDum+G+mq9lIVFWvuqfrTSNSTRS0fLgqg+NDM4ynLQ5eDvyKf3hGVV9BxGrKwA4ZLqNHI
SbHK3yXBq2U/DCHwvchrM5E4ujU9K6Bc8pHXccCkGsPzcklWWmBGzpESxQJw16CEfTLSSol2gWPv
cpdaGjOiLec/VspZijPGoTgoM5HRkkOBs5FGJcK5aQmEErQ9yfrA9t77IEpoqp56crcFWpuq51hj
WMMGT3tQX3/KS5pPjw3cYTtJ99KYUZyQaSmAPEjgZ0xRASOADvYkIl+TKybVMiC1N8GizwR0tMFK
mnqREwPDlIz92FO2mg6W0gtaH30qV4ZobR1pJjE+abOuRpVP9Vig2kMvAx1WvfwFT55fk7/ek/IC
YbZesMGDWcm3JiOWjjlZfB1ZcoT4jlC4Znqd6MiMq09GcfAgpNhgOC9nMGhfxGmNfZpiNaZiYp15
vDt4rcUaExhPfRUR8BFXVaUqTz5EaKRy2/2isYcCAAHy8i2BuAaesGtDFFlfaF21iYueA9HF7pDp
JPwMZ5pZfcrhCQNxXYxc/x7q1zDQ3JG/lMJfVMhfj5SK0nn1hzgrsRqKJ3k3+z/78kWbSLrceOD/
gs1Gk/6aD59OzYAPx4zUYH1nJhOIe+4ZbYGjp27eIXW/LHyb/h7msa/OeDs1z+i/iJbDq22cO9j/
KpH5sFMY3YsL/+COHNvoSC5kHCanMU8IvqZpxtULmTWkBFdz
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
