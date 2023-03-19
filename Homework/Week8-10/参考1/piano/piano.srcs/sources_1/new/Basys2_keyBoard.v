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

/*����*/
module Basys2_keyBoard(clk,ps2k_clk,ps2k_data,sw,ps2_byte,ps2_state_r);
input clk; //50Mʱ���ź�  //��λ�ź�
input ps2k_clk;   //PS2�ӿ�ʱ���ź�
input ps2k_data;  //PS2�ӿ������ź�
input [3:0] sw;   //sw[0]��sw[1]Ϊ�Զ����ţ�sw[2]Ϊrecord��sw[3]Ϊreplay
output[7:0] ps2_byte;    // 1byte��ֵ��ֻ���򵥵İ���ɨ��
output ps2_state_r;    //���̵�ǰ״̬��ps2_state=1��ʾ�м�������

//---------------�Զ�����--------------

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
		    if(sw==2'b10)   //С����
		    begin
			    count2<=count2+1;
			     case(count2)
			     20:music[7:0]<=8'b00010101;//11;
				 29:music[7:0]<=8'b00000000; //������˸һ��
				 30:music[7:0]<=8'b00010101;//11
				 40:music[7:0]<=8'b00101100;//15;
				 49:music[7:0]<=8'h00000000; //������˸һ��
				 50:music[7:0]<=8'b00101100;//15
				 60:music[7:0]<=8'b00110101;//16;
				 69:music[7:0]<=8'h00000000; //������˸һ��
				 70:music[7:0]<=8'b00110101;//16
				 80:music[7:0]<=8'b00101100;//15
				 90:music[7:0]<=8'b00101101;//14;
				 99:music[7:0]<=8'h00000000; //������˸һ��
				 100:music[7:0]<=8'b00101101;//14
				 110:music[7:0]<=8'b00100100;//13;
				 119:music[7:0]<=8'h00000000; //������˸һ��
				 120:music[7:0]<=8'b00100100;//13
				 130:music[7:0]<=8'b00011101;//12;
				 139:music[7:0]<=8'h00000000; //������˸һ��
				 140:music[7:0]<=8'b00011101;//12
				 150:music[7:0]<=8'b00010101;//11
			     160:count2<=0;
				 endcase
			end
			else if(sw==2'b11)  //û�й�������û�����й�
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
                   	 
//---------------����---------------	 	 
reg ps2k_clk_r0,ps2k_clk_r1,ps2k_clk_r2;  //ps2k_clk״̬�Ĵ���
wire neg_ps2k_clk;   // ps2k_clk�½��ر�־λ
always @ (posedge clk) 
    begin           //����״̬�������˲�
           ps2k_clk_r0 <= ps2k_clk;
           ps2k_clk_r1 <= ps2k_clk_r0;
           ps2k_clk_r2 <= ps2k_clk_r1;
       end
assign neg_ps2k_clk = ~ps2k_clk_r1 & ps2k_clk_r2;    //�½���
//------------------------------------------
reg[7:0] ps2_byte_r;     //PC��������PS2��һ���ֽ����ݴ洢��
reg[7:0] temp_data;  //��ǰ�������ݼĴ���
reg[3:0] num; //�����Ĵ���
always @ (posedge clk) begin
 if(neg_ps2k_clk&&sw[1:0]=='b00) begin //��⵽ps2k_clk���½���
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
                         num <= num+1'b1;  //��żУ��λ����������
                     end
              4'd10: begin
                         num <= 4'd0;  // num����
                     end
              default: ;
              endcase
       end
end
reg key_f0;       //�ɼ���־λ����1��ʾ���յ�����8'hf0�����̶��룩���ٽ��յ���һ�����ݺ�����
reg ps2_state_r;  //���̵�ǰ״̬��ps2_state_r=1��ʾ�м�������

always @ (posedge clk) begin //�������ݵ���Ӧ��������ֻ��1byte�ļ�ֵ���д���
 if(num==4'd10&&neg_ps2k_clk&&sw[1:0]=='b00) begin   //�մ�����һ���ֽ�����
           if(temp_data == 8'hf0) key_f0 <= 1'b1;
           else begin
                  if(!key_f0) begin //˵���м�����
                         ps2_state_r <= 1'b1;
   
                         ps2_byte_r <= temp_data; //���浱ǰ��ֵ        
                     end
                  else begin
                         ps2_state_r <= 1'b0;
                         key_f0 <= 1'b0;
                     end
              end
       end
end

//---------------¼��---------------
wire [7:0] record_asci;//��replayΪ"1"ʱ������Ĳ����İ�������ֵ
//�ж�
assign ps2_byte = sw[1] ? music : sw[3] ? record_asci : (ps2_state_r==1)? ps2_byte_r:8'b00000000;

//Recordģ��ʵ����
Record U5(
	 .clk(clk),
	 .record(sw[2]),
	 .replay(sw[3]),
	 .ps2_asci(ps2_byte_r),
	 .record_asci(record_asci),
	 .ps2_state_r(ps2_state_r)
	 );

endmodule