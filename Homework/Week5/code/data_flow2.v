module seg7 (
    input D1,
    input D0,
    input EN,
    output[3:0] AN,
    output[2:0] led,
    output[6:0] a_to_g //��������������abcdefg,��a_to_g[6]=a
);
    assign AN=4'b1110;//ֻ�����һ��������
    assign led={EN,D1,D0}; //���ƿ���ָʾ��

    //ȡ�ɷ�
    //��ʾ������൱�ڶ������ѡ�����ۺ�
    //�����߶������һ���߸�����������൱��һ��3-7��������̫�����ӣ������б�Ҫ����һЩ��
    //���߶������Ҫ��������֣�0,1,2,3,4���洢��һ��������
    //�����������������Ԫ�ؽ���ѡ�񼴿�
    //����EN��D1��D0 to selΪһ��3-3������
    //��1.EN=1 D1=d D0=d����sel=4��a_to_g=A_TO_G[4]
    //��2.EN=0 D1=1 D0=0����sel=2��a_to_g=A_TO_G[2]

    //����
    wire[6:0] A_TO_G[4:0];
    assign A_TO_G[0]=7'b000_0001; //0
    assign A_TO_G[1]=7'b100_1111; //1
    assign A_TO_G[2]=7'b001_0010; //2
    assign A_TO_G[3]=7'b000_0110; //3
    assign A_TO_G[4]=7'b100_1100; //4

    //3-3���������������
    wire nD1,nD0,nEN;
    assign nD1=~D1; assign nD0=~D0; assign nEN=~EN;

    //3-3����������������������±꣩
    wire[2:0] sel; //һ��3λ������������ʾ0~4
    //�����ɷ���sel[2]=nEN,sel[1]=EN&D1,sel[0]=EN&D0
    assign sel[2]=nEN;
    assign sel[1]=EN&D1;
    assign sel[0]=EN&D0;

    //������ʵ��һ�����ӵ�����ѡ���������ɽ��������ȥ���
    assign a_to_g=A_TO_G[sel];

    
    




endmodule