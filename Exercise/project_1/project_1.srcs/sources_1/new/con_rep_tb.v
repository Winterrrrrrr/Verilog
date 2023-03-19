`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/04 14:46:04
// Design Name: 
// Module Name: con_rep_tb
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


module con_rep_tb;
    reg[2:0] a;
    reg[3:0] b;
    reg[7:0] c;
    reg[4:0] d;
    reg[5:0] e;
    initial
        begin
            a=3'b101;
            b=4;b1110;
            c={a,b};
            d={a[2:1],b[2:0]};
            c={2{a}};
            $display("%b",c);
            $display("%b",d);
            $display("%b",e); 
        end
endmodule
