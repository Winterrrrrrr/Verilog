`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/23 08:49:55
// Design Name: 
// Module Name: Basys2_KeyBoard
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

/*键盘*/
module Basys2_keyBoard(clk,ps2k_clk,ps2k_data,sw,ps2_byte,ps2_state_r);
input clk; //50M时钟信号  //复位信号
input ps2k_clk;   //PS2接口时钟信号
input ps2k_data;  //PS2接口数据信号
input [3:0] sw;   //sw[0]和sw[1]为自动播放，sw[2]为record，sw[3]为replay
output[7:0] ps2_byte;    // 1byte键值，只做简单的按键扫描
output ps2_state_r;    //键盘当前状态，ps2_state=1表示有键被按下

//---------------自动播放--------------

	 reg [30:0] count1;
	 reg [10:0] count2;
	 reg clk_10Hz;
	 reg [7:0] music;
	
always@(posedge clk)
	    begin
		    if(count1>=2500000)
			    begin
				    clk_10Hz<=~clk_10Hz;
				    count1<=0;
             end					 
			 else
             count1<=count1+1;
       end		 

always@(posedge clk_10Hz)
	    begin
		    if(sw==2'b10)   //小星星
		    begin
			    count2<=count2+1;
			     case(count2)
			     20:music[7:0]<=8'b00010101;//11;
				 29:music[7:0]<=8'b00000000; //用于闪烁一下
				 30:music[7:0]<=8'b00010101;//11
				 40:music[7:0]<=8'b00101100;//15;
				 49:music[7:0]<=8'h00000000; //用于闪烁一下
				 50:music[7:0]<=8'b00101100;//15
				 60:music[7:0]<=8'b00110101;//16;
				 69:music[7:0]<=8'h00000000; //用于闪烁一下
				 70:music[7:0]<=8'b00110101;//16
				 80:music[7:0]<=8'b00101100;//15
				 90:music[7:0]<=8'b00101101;//14;
				 99:music[7:0]<=8'h00000000; //用于闪烁一下
				 100:music[7:0]<=8'b00101101;//14
				 110:music[7:0]<=8'b00100100;//13;
				 119:music[7:0]<=8'h00000000; //用于闪烁一下
				 120:music[7:0]<=8'b00100100;//13
				 130:music[7:0]<=8'b00011101;//12;
				 139:music[7:0]<=8'h00000000; //用于闪烁一下
				 140:music[7:0]<=8'b00011101;//12
				 150:music[7:0]<=8'b00010101;//11
			     160:count2<=0;
				 endcase
			end
			else if(sw==2'b11)  //没有共产党就没有新中国
			begin
			count2<=count2+1;
			    case(count2)	
			     20:music[7:0]<=8'b00011100;//21
				 30:music[7:0]<=8'b00101100; //15
				 40:music[7:0]<=8'b00110101;//16
				 49:music[7:0]<=8'b00101100;//
				 50:music[7:0]<=8'b00110101;//16
				 50:music[7:0]<=8'b00101100;//15
				 60:music[7:0]<=8'b00110101;//16;
				 70:music[7:0]<=8'b00011100; //21
				 79:music[7:0]<=8'b00110101;
				 80:music[7:0]<=8'b00011100;//21
				 90:music[7:0]<=8'b00110101;//16
				 100:music[7:0]<=8'b00011100; //21
				 110:music[7:0]<=8'b00011011;//22
				 120:music[7:0]<=8'b00000000;//0
				 130:music[7:0]<=8'b00100011; //23
				 140:music[7:0]<=8'b00011011;//22
				 150:music[7:0]<=8'b00011100;//21
				 160:music[7:0]<=8'b00100011; //23
				 170:music[7:0]<=8'b00011011;//22
				 180:music[7:0]<=8'b00011100;//21
			     190:music[7:0]<=8'b00110101;//16
				 200:music[7:0]<=8'b00011011; //22
				 190:music[7:0]<=8'b00111100;//17 
				 200:music[7:0]<=8'b00110101; //16
				 210:music[7:0]<=8'b00101100; //15
				 220:music[7:0]<=8'b00000000;//0
				 230:count2<=0;
			    endcase        		
			    end
			 else
			 begin
			 count2<=0;
             music[7:0]<=8'b0;
             end
       end	
                   	 
//---------------键盘---------------	 	 
reg ps2k_clk_r0,ps2k_clk_r1,ps2k_clk_r2;  //ps2k_clk状态寄存器
wire neg_ps2k_clk;   // ps2k_clk下降沿标志位
always @ (posedge clk) 
    begin           //锁存状态，进行滤波
           ps2k_clk_r0 <= ps2k_clk;
           ps2k_clk_r1 <= ps2k_clk_r0;
           ps2k_clk_r2 <= ps2k_clk_r1;
       end
assign neg_ps2k_clk = ~ps2k_clk_r1 & ps2k_clk_r2;    //下降沿
//------------------------------------------
reg[7:0] ps2_byte_r;     //PC接收来自PS2的一个字节数据存储器
reg[7:0] temp_data;  //当前接收数据寄存器
reg[3:0] num; //计数寄存器
always @ (posedge clk) begin
 if(neg_ps2k_clk&&sw[1:0]=='b00) begin //检测到ps2k_clk的下降沿
           case (num)
              4'd0:  num <= num+1'b1;
              4'd1:  begin
                         num <= num+1'b1;
                         temp_data[0] <= ps2k_data;  //bit0
                     end
              4'd2:  begin
                         num <= num+1'b1;
                         temp_data[1] <= ps2k_data;  //bit1
                     end
              4'd3:  begin
                         num <= num+1'b1;
                         temp_data[2] <= ps2k_data;  //bit2
                     end
              4'd4:  begin
                         num <= num+1'b1;
                         temp_data[3] <= ps2k_data;  //bit3
                     end
              4'd5:  begin
                         num <= num+1'b1;
                         temp_data[4] <= ps2k_data;  //bit4
                     end
              4'd6:  begin
                         num <= num+1'b1;
                         temp_data[5] <= ps2k_data;  //bit5
                     end
              4'd7:  begin
                         num <= num+1'b1;
                         temp_data[6] <= ps2k_data;  //bit6
                     end
              4'd8:  begin
                         num <= num+1'b1;
                         temp_data[7] <= ps2k_data;  //bit7
                     end
              4'd9:  begin
                         num <= num+1'b1;  //奇偶校验位，不做处理
                     end
              4'd10: begin
                         num <= 4'd0;  // num清零
                     end
              default: ;
              endcase
       end
end
reg key_f0;       //松键标志位，置1表示接收到数据8'hf0（键盘断码），再接收到下一个数据后清零
reg ps2_state_r;  //键盘当前状态，ps2_state_r=1表示有键被按下

always @ (posedge clk) begin //接收数据的相应处理，这里只对1byte的键值进行处理
 if(num==4'd10&&neg_ps2k_clk&&sw[1:0]=='b00) begin   //刚传送完一个字节数据
           if(temp_data == 8'hf0) key_f0 <= 1'b1;
           else begin
                  if(!key_f0) begin //说明有键按下
                         ps2_state_r <= 1'b1;
   
                         ps2_byte_r <= temp_data; //锁存当前键值        
                     end
                  else begin
                         ps2_state_r <= 1'b0;
                         key_f0 <= 1'b0;
                     end
              end
       end
end

//---------------录音---------------
wire [7:0] record_asci;//当replay为"1"时，输出的采样的按键的码值
//判断
assign ps2_byte = sw[1] ? music : sw[3] ? record_asci : (ps2_state_r==1)? ps2_byte_r:8'b00000000;

//Record模块实例化
Record U5(
	 .clk(clk),
	 .record(sw[2]),
	 .replay(sw[3]),
	 .ps2_asci(ps2_byte_r),
	 .record_asci(record_asci),
	 .ps2_state_r(ps2_state_r)
	 );

endmodule