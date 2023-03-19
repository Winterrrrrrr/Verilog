`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/23 08:49:33
// Design Name: 
// Module Name: make_melody
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

/*蜂鸣器发声*/
module make_melody(
    input clk,
	 input [7:0]switch,
	 output reg speaker
    );
  reg [5:0]count1;
  reg [30:0] count2;
  reg clk_1mhz;
  reg [12:0] origin;
  reg carry;
  reg [12:0]divider;//分频器
  reg [7:0] switch_200ms;
  reg [7:0] switch_old;
  
initial begin
	count1<=0;
	carry<=0;
	clk_1mhz<=0;
	origin<=0;
	carry<=0;
	divider<=0;
end	
   
always@(posedge clk)
	begin
	    if(switch_old==switch)
		    begin
		    if(count2<=25000000)//1/2s
				 begin
				    count2<=count2+1;
					switch_200ms<=switch;
				end
            else
                begin
                    switch_200ms<=0;
					 count2<=count2+1;
				end
            end	
       else
           begin
           switch_old<=switch;
           count2<=0;
           end
    end			
		
	always@(posedge clk)//分频器设计1，产生音阶频率的基准频率
	  begin
		  if(count1<50)
			  begin
				  count1<=count1+1;
			  end
		  else
			  begin
				  count1<=0;
				  clk_1mhz<=~clk_1mhz;
			  end
	  end
	  	 
   always@(posedge clk_1mhz)//1Mhz控制音阶的频率产生 1us
         begin
            if(divider<2000)
               begin
                  divider<=divider+1;
                  carry<=0;
               end
            else if(divider==2000)
               begin
                  carry<=1;
                  divider<=origin;
               end
		    else	
			   begin  
				  carry<=1;
			      divider<=0;
			end  
         end
   
   always@(posedge carry) //产生音阶信号的输出 ，根据origin，产生相应频率的方波信号
      begin
		      if(origin>2000)
				   speaker<=0;
				else
               speaker<=~speaker;//2分频产生方波信号
      end
				
   always@(*)
      begin
         case(switch_200ms)//根据键盘通码判断，然后赋予响应频率（转换）
			  8'b00010101:origin=92;    //Q低音do
			  8'b00011101:origin=300;   //W低音rai
			  8'b00100100:origin=485;   //E低音mi
			  8'b00101101:origin=567;   //R低音fa
           8'b00101100:origin=724;   //T低音so
           8'b00110101:origin=864;   //Y低音la
           8'b00111100:origin=988;   //U低音xi			  
           8'b00011100:origin=1044;   //A中音do
           8'b00011011:origin=1150;   //S中音rai
           8'b00100011:origin=1240;  //D中音mi
           8'b00101011:origin=1284;  //F中音fa
			  8'b00110100:origin=1362;  //G中音so
			  8'b00110011:origin=1432;  //H中音la
			  8'b00111011:origin=1494;  //J中音xi
			  8'b00011010:origin=1522;  //Z高音do
			  8'b00100010:origin=1574;  //X高音rai
			  8'b00100001:origin=1621;  //C高音mi
			  8'b00101010:origin=1640;  //V高音fa 
			  8'b00110010:origin=1681;  //B高音so
			  8'b00110001:origin=1716;  //N高音la
			  8'b00111010:origin=1746;  //M高音xi
			  default:origin=3000;//防止按键未动作时，产生混杂的背景噪音
         endcase
      end
	 
endmodule
