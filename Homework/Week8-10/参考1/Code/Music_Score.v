`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/23 08:49:10
// Design Name: 
// Module Name: Music_Score
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

/*�������ʾ����������Ӧ����*/
module Music_Score(
    input clk,
	 input [7:0]key_code,
	 output reg [6:0] seg,      
	 output reg [3:0] an,
	 output  wire [7:0] music
    );
    //�趨ÿ������֮���׼��ʱ����Ϊ0.1s
	 reg [4:0] digit;
	 reg [15:0] cntDiv;
	 reg [30:0] count1;
	 reg [10:0] count2;
	 wire [1:0]clkDisp;
	 reg clk_10Hz;
	 reg [15:0] display;

    always@(posedge clk)
	    cntDiv<=cntDiv+1;
		 
    assign clkDisp[1:0]=cntDiv[15:14];//����ˢ��7�������	 
    	
    always@(*)//��ʾ�������׺�����
       case(key_code[7:0])
		     8'b00010101:display[15:8]<=8'h11;    //Q����do
			  8'b00011101:display[15:8]<=8'h12;   //W����rai
			  8'b00100100:display[15:8]<=8'h13;  //E����mi
			  8'b00101101:display[15:8]<=8'h14;   //R����fa
           8'b00101100:display[15:8]<=8'h15;   //T����so
           8'b00110101:display[15:8]<=8'h16;   //Y����la
           8'b00111100:display[15:8]<=8'h17;   //U����xi			  
           8'b00011100:display[15:8]<=8'h21;   //A����do
           8'b00011011:display[15:8]<=8'h22;   //S����rai
           8'b00100011:display[15:8]<=8'h23; //D����mi
           8'b00101011:display[15:8]<=8'h24; //F����fa
			  8'b00110100:display[15:8]<=8'h25;  //G����so
			  8'b00110011:display[15:8]<=8'h26;  //H����la
			  8'b00111011:display[15:8]<=8'h27;  //J����xi
			  8'b00011010:display[15:8]<=8'h31;  //Z����do
			  8'b00100010:display[15:8]<=8'h32;  //X����rai
			  8'b00100001:display[15:8]<=8'h33;  //C����mi
			  8'b00101010:display[15:8]<=8'h34;  //V����fa ��
			  8'b00110010:display[15:8]<=8'h35; //B����so
			  8'b00110001:display[15:8]<=8'h36;  //N����la
			  8'b00111010:display[15:8]<=8'h37; //M����xi
			  default:display[15:8]<=8'h00;
	   endcase		  
		 
    always@(*)  //����7�������ʾ
      begin
        case(clkDisp)		  
	       2'b00:begin
			          digit=display[3:0];
				       an=4'b1110;
				    end
          2'b01:begin
                    digit=display[7:4];
                    an=4'b1101;
                  end
          2'b10:begin
			          digit=display[11:8];
				       an=4'b1011;
				    end
          2'b11:begin
                    digit=display[15:12];
                    an=4'b0111;
                  end						
        endcase
      end				 
    	
    always @ (*)
		 case (digit)
		 0: seg = 7'b1000000;
		 1: seg = 7'b1111001;
		 2: seg = 7'b0100100;
		 3: seg = 7'b0110000;
		 4: seg = 7'b0011001;
		 5: seg = 7'b0010010;
		 6: seg = 7'b0000010;
		 7: seg = 7'b1111000;
		 8: seg = 7'b0000000;
		 9: seg = 7'b0010000;
		 'hA: seg=7'b0001000;
		 'hB: seg=7'b0000011;
		 'hC: seg=7'b1000110;
		 'hD: seg=7'b0100001;
		 'hE: seg=7'b0000110;
		 'hF: seg=7'b0001110;
		 default: seg = 7'b0000001;  // 0
	 endcase		
			    	 
endmodule	
