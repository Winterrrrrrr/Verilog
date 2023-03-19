`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/04 12:56:00
// Design Name: 
// Module Name: pro_1_design
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


module pro_1_design(out,a,b,sl);
    input a,b,sl;
    output out;
    reg out;
        always@(sl or a or b)
            if(!sl) 
                out=a;
            else out=b;
endmodule
