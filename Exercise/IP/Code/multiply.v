module multiply ();

//�ƺ������Ͳ�������дһ�������ļ��ˣ�
    reg CLK=0;
    always #50 CLK=~CLK;
    wire[3:0] A=6; //����ֱ��ʮ���Ƹ�ֵ
    wire[3:0] B=7;
    wire[7:0] P;

    mult_gen_0 mul (
  .CLK(CLK),  // input wire CLK  //��Ϊɶǰ�涨�����reg��
  .A(A),      // input wire [3 : 0] A
  .B(B),      // input wire [3 : 0] B
  .P(P)      // output wire [7 : 0] P
);
    
endmodule