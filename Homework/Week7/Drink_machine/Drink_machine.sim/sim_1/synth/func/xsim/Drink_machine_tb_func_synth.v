// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Oct 20 19:43:42 2022
// Host        : 马华PC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/Winter/Desktop/vivado/Homework/Week7/Drink_machine/Drink_machine.sim/sim_1/synth/func/xsim/Drink_machine_tb_func_synth.v
// Design      : Drink_machine
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* Do_nothing = "2'b00" *) (* Drink_and_change = "2'b11" *) (* Only_drink = "2'b10" *) 
(* S0 = "3'b000" *) (* S1 = "3'b010" *) (* S2 = "3'b011" *) 
(* S3 = "3'b001" *) (* S4 = "3'b100" *) (* fifty_cents = "2'b01" *) 
(* no_input = "2'b00" *) (* one_yuan = "2'b10" *) 
(* NotValidForBitStream *)
module Drink_machine
   (CP,
    Rst_async_n,
    X,
    Z);
  input CP;
  input Rst_async_n;
  input [1:0]X;
  output [1:0]Z;

  wire CP;
  wire CP_IBUF;
  wire CP_IBUF_BUFG;
  wire \FSM_sequential_cur_state[2]_i_2_n_0 ;
  wire Rst_async_n;
  wire Rst_async_n_IBUF;
  wire [1:0]X;
  wire [1:0]X_IBUF;
  wire [1:0]Z;
  wire [1:0]Z_OBUF;
  wire [2:0]cur_state;
  wire [2:0]next_state;

  BUFG CP_IBUF_BUFG_inst
       (.I(CP_IBUF),
        .O(CP_IBUF_BUFG));
  IBUF CP_IBUF_inst
       (.I(CP),
        .O(CP_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h50EFAF50)) 
    \FSM_sequential_cur_state[0]_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[1]),
        .I2(cur_state[0]),
        .I3(X_IBUF[1]),
        .I4(X_IBUF[0]),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h4010AF40)) 
    \FSM_sequential_cur_state[1]_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[1]),
        .I2(cur_state[0]),
        .I3(X_IBUF[0]),
        .I4(X_IBUF[1]),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAA104000)) 
    \FSM_sequential_cur_state[2]_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[1]),
        .I2(cur_state[0]),
        .I3(X_IBUF[1]),
        .I4(X_IBUF[0]),
        .O(next_state[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_cur_state[2]_i_2 
       (.I0(Rst_async_n_IBUF),
        .O(\FSM_sequential_cur_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "S4:010,S3:100,S2:001,S1:011,S0:000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[0] 
       (.C(CP_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_cur_state[2]_i_2_n_0 ),
        .D(next_state[0]),
        .Q(cur_state[0]));
  (* FSM_ENCODED_STATES = "S4:010,S3:100,S2:001,S1:011,S0:000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[1] 
       (.C(CP_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_cur_state[2]_i_2_n_0 ),
        .D(next_state[1]),
        .Q(cur_state[1]));
  (* FSM_ENCODED_STATES = "S4:010,S3:100,S2:001,S1:011,S0:000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[2] 
       (.C(CP_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_cur_state[2]_i_2_n_0 ),
        .D(next_state[2]),
        .Q(cur_state[2]));
  IBUF Rst_async_n_IBUF_inst
       (.I(Rst_async_n),
        .O(Rst_async_n_IBUF));
  IBUF \X_IBUF[0]_inst 
       (.I(X[0]),
        .O(X_IBUF[0]));
  IBUF \X_IBUF[1]_inst 
       (.I(X[1]),
        .O(X_IBUF[1]));
  OBUF \Z_OBUF[0]_inst 
       (.I(Z_OBUF[0]),
        .O(Z[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Z_OBUF[0]_inst_i_1 
       (.I0(cur_state[1]),
        .I1(cur_state[2]),
        .I2(cur_state[0]),
        .O(Z_OBUF[0]));
  OBUF \Z_OBUF[1]_inst 
       (.I(Z_OBUF[1]),
        .O(Z[1]));
  LUT3 #(
    .INIT(8'h06)) 
    \Z_OBUF[1]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[1]),
        .I2(cur_state[0]),
        .O(Z_OBUF[1]));
endmodule
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
