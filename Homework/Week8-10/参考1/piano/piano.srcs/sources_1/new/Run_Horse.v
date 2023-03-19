`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/23 08:48:43
// Design Name: 
// Module Name: Run_Horse
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

/*跑马灯*/
module Run_Horse(
    input clk,
	 input [7:0] key_code,
	 output reg [15:0]current_state
    );
	 reg [15:0]next_state;
	 	 
	 reg [24:0]count;
	 reg clkdiv;
	 reg mode;
	 reg [7:0]key_code_old;

	 initial  begin
	    current_state=16'b0000000000000001;
		 count<=0;
		 mode<=1;
	 end
	
	 always@(posedge clk)
	    if(key_code_old!=key_code)
	       begin
			    key_code_old<=key_code;
             mode<=~mode;
			  end
		  
	 //先进行分频功能
	 always@(posedge clk)
	    begin
	       if(count==2000000)
	          begin 
				    clkdiv=~clkdiv; 
					 count=0; 
				 end
	       else 
			    begin
	             count=count+1;	 
				 end	 
       end		 
	 	 
	always@(posedge clkdiv)
            current_state<=next_state;
	 
	 always@(current_state,mode)
	    
	       begin
		       case(current_state)
			    16'b1000000000000000:next_state<=mode==1?16'b0100000000000000:16'b0000000000000001;
			    16'b0100000000000000:next_state<=mode==1?16'b0010000000000000:16'b1000000000000000;
			    16'b0010000000000000:next_state<=mode==1?16'b0001000000000000:16'b0100000000000000;
			    16'b0001000000000000:next_state<=mode==1?16'b0000100000000000:16'b0010000000000000;
			    16'b0000100000000000:next_state<=mode==1?16'b0000010000000000:16'b0001000000000000;
			    16'b0000010000000000:next_state<=mode==1?16'b0000001000000000:16'b0000100000000000;
			    16'b0000001000000000:next_state<=mode==1?16'b0000000100000000:16'b0000010000000000;
		   	    16'b0000000100000000:next_state<=mode==1?16'b0000000010000000:16'b0000001000000000;
		   	    16'b0000000010000000:next_state<=mode==1?16'b0000000001000000:16'b0000000100000000;
		   	    16'b0000000001000000:next_state<=mode==1?16'b0000000000100000:16'b0000000010000000;
		   	    16'b0000000000100000:next_state<=mode==1?16'b0000000000010000:16'b0000000001000000;
		   	    16'b0000000000010000:next_state<=mode==1?16'b0000000000001000:16'b0000000000100000;
		   	    16'b0000000000001000:next_state<=mode==1?16'b0000000000000100:16'b0000000000010000;
		   	    16'b0000000000000100:next_state<=mode==1?16'b0000000000000010:16'b0000000000001000;
		   	    16'b0000000000000010:next_state<=mode==1?16'b0000000000000001:16'b0000000000000100;
		   	    16'b0000000000000001:next_state<=mode==1?16'b1000000000000000:16'b0000000000000010;
			    default:next_state<=16'b1000000000000000;
		       endcase
          end		
         

endmodule