`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/24 14:14:28
// Design Name: 
// Module Name: Record
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

/*¼��*/
module Record(clk, record, replay, ps2_asci, record_asci,ps2_state_r);
input clk; //��������ʱ���ź�
input record; //¼������
input replay; //�طſ���
input [7:0] ps2_asci; //����ļ��̰�������ֵ
input ps2_state_r;
output reg [7:0] record_asci; //��replayΪ"1"ʱ������Ĳ����İ�������ֵ

reg [25:0] count_for_Hz; //��Ƶ������
reg clk_Hz;

reg [7:0] mem [127:0];  //�洢����ֵ���ڴ�����
reg [6:0] count; //�洢������
reg [6:0]count_max;  //���һλ
reg record_old;  //��¼"¼��"���ص���һ��״̬
reg replay_old;  //��¼"����"���ص���һ��״̬

initial begin
replay_old =0;  //����
record_old=0;
end

always@(posedge clk)  //����10Hz�Ĳ���Ƶ��
	    begin
		    if(count_for_Hz>=5000000)
			    begin
				    clk_Hz<=~clk_Hz;
				    count_for_Hz<=0;
             end					 
			 else
             count_for_Hz<=count_for_Hz+1;
       end
       
//��recordΪ"1"ʱ������������ļ�ֵ���뵽mem�ڴ�������
always@(posedge clk_Hz)
begin
    if(replay==1&&replay_old==0)  //"����"���ز���ȥ
    begin
    count_max<=count;  //��¼�洢���һλ
    count<=0;
    end
    
    replay_old<=replay;
    
    if(replay==0&&record==0)  //�洢����ֵ���ڴ�����mem���� 
    begin 
    mem[0]<='b00000000;
    mem[1]<='b00000000;
    mem[2]<='b00000000;
    mem[3]<='b00000000;
    mem[4]<='b00000000;
    mem[5]<='b00000000;
    mem[6]<='b00000000;
    mem[7]<='b00000000;
    mem[8]<='b00000000;
    mem[9]<='b00000000;
    mem[10]<='b00000000;
    mem[11]<='b00000000;
    mem[12]<='b00000000;
    mem[13]<='b00000000;
    mem[14]<='b00000000;
    mem[15]<='b00000000;
    mem[16]<='b00000000;
    mem[17]<='b00000000;
    mem[18]<='b00000000;
    mem[19]<='b00000000;
    mem[20]<='b00000000;
    mem[21]<='b00000000;
    mem[22]<='b00000000;
    mem[23]<='b00000000;
    mem[24]<='b00000000;
    mem[25]<='b00000000;
    mem[26]<='b00000000;
    mem[27]<='b00000000;
    mem[28]<='b00000000;
    mem[29]<='b00000000;
    mem[30]<='b00000000;
    mem[31]<='b00000000;
    mem[32]<='b00000000;
    mem[33]<='b00000000;
    mem[34]<='b00000000;
    mem[35]<='b00000000;
    mem[36]<='b00000000;
    mem[37]<='b00000000;
    mem[38]<='b00000000;
    mem[39]<='b00000000;
    mem[40]<='b00000000;
    mem[41]<='b00000000;
    mem[42]<='b00000000;
    mem[43]<='b00000000;
    mem[44]<='b00000000;
    mem[45]<='b00000000;
    mem[46]<='b00000000;
    mem[47]<='b00000000;
    mem[48]<='b00000000;
    mem[49]<='b00000000;
    mem[50]<='b00000000;
    mem[51]<='b00000000;
    mem[52]<='b00000000;
    mem[53]<='b00000000;
    mem[54]<='b00000000;
    mem[55]<='b00000000;
    mem[56]<='b00000000;
    mem[57]<='b00000000;
    mem[58]<='b00000000;
    mem[59]<='b00000000;
    mem[60]<='b00000000;
    mem[61]<='b00000000;
    mem[62]<='b00000000;
    mem[63]<='b00000000;
    mem[64]<='b00000000;
    mem[65]<='b00000000;
    mem[66]<='b00000000;
    mem[67]<='b00000000;
    mem[68]<='b00000000;
    mem[69]<='b00000000;
    mem[70]<='b00000000;
    mem[71]<='b00000000;
    mem[72]<='b00000000;
    mem[73]<='b00000000;
    mem[74]<='b00000000;
    mem[75]<='b00000000;
    mem[76]<='b00000000;
    mem[77]<='b00000000;
    mem[78]<='b00000000;
    mem[79]<='b00000000;
    mem[80]<='b00000000;
    mem[81]<='b00000000;
    mem[82]<='b00000000;
    mem[83]<='b00000000;
    mem[84]<='b00000000;
    mem[85]<='b00000000;
    mem[86]<='b00000000;
    mem[87]<='b00000000;
    mem[88]<='b00000000;
    mem[89]<='b00000000;
    mem[90]<='b00000000;
    mem[91]<='b00000000;
    mem[92]<='b00000000;
    mem[93]<='b00000000;
    mem[94]<='b00000000;
    mem[95]<='b00000000;
    mem[96]<='b00000000;
    mem[97]<='b00000000;
    mem[98]<='b00000000;
    mem[99]<='b00000000;
    mem[100]<='b00000000;
    mem[101]<='b00000000;
    mem[102]<='b00000000;
    mem[103]<='b00000000;
    mem[104]<='b00000000;
    mem[105]<='b00000000;
    mem[106]<='b00000000;
    mem[107]<='b00000000;
    mem[108]<='b00000000;
    mem[109]<='b00000000;
    mem[110]<='b00000000;
    mem[111]<='b00000000;
    mem[112]<='b00000000;
    mem[113]<='b00000000;
    mem[114]<='b00000000;
    mem[115]<='b00000000;
    mem[116]<='b00000000;
    mem[117]<='b00000000;
    mem[118]<='b00000000;
    mem[119]<='b00000000;
    mem[120]<='b00000000;
    mem[121]<='b00000000;
    mem[122]<='b00000000;
    mem[123]<='b00000000;
    mem[124]<='b00000000;
    mem[125]<='b00000000;
    mem[126]<='b00000000;
    mem[127]<='b00000000;
    count_max=0;
    end
    
    if(record == 1'b1&&record_old==0)  //"¼��"���ز���ȥ
    count<=0;

    record_old<=record;
    
//��recordΪ"1"ʱ������������ļ�ֵ���뵽mem�ڴ�������    
    if(record == 1'b1)
    begin
    count <= count + 7'b1;
        if(ps2_state_r==1)
        begin
        mem[count] <= ps2_asci;
        end
    end
end

//���洢�ļ�ֵ���
always@(count)
begin
if(count<=count_max)  //����һ��
     record_asci <= mem[count];
end

endmodule
