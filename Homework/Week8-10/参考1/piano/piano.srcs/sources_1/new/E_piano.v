`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/23 08:48:16
// Design Name: 
// Module Name: E_piano
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//顶层模块，用于调用各子函数
module E_Piano(
     input wire clk,        //Basys2时钟，50MHz
	 input wire PS2C,       //PS2接口的时钟
	 input wire PS2D,       //PS2接口的数据
	 input wire [3:0]select,
	 output wire [15:0] led,    //Basys2上的8个LED灯，用于跑马灯效果
	 output wire [0:6] seg,  //七段数码管的显示    
	 output wire [3:0] an,   //七段数码管的使能端
	 
	 output speaker         //Pmod-AMP模块的蜂鸣器
    );
	 wire [7:0]key_code;
	 wire [7:0]music;
    Basys2_keyBoard U1(
	 .clk(clk),
	 .ps2k_clk(PS2C),
	 .ps2k_data(PS2D),
	 .sw(select),
	 .ps2_byte(key_code),
	 .ps2_state_r(ps2_state_r)
	 );
	 
	 make_melody U2(
	 .clk(clk),
	 .switch(key_code),
	 .speaker(speaker)
	 );
	 
	 Run_Horse U3(
	 .clk(clk),
	 .key_code(key_code),
	 .current_state(led)
	 );
	 
	 Music_Score U4(
	 .clk(clk),
	 .key_code(key_code),
	 .seg(seg),
	 .an(an),
	 .music(music)
	 );
	
	
	 endmodule
