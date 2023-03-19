module seg7 (
    input D1,
    input D0,
    input EN,
    output[3:0] AN,
    output[2:0] led,
    output[6:0] a_to_g //从左往右依次是abcdefg,即a_to_g[6]=a
);
    assign AN=4'b1110;//只让最后一根管子亮
    assign led={EN,D1,D0}; //控制开关指示灯

    //取巧法
    //显示数码管相当于多个数据选择器综合
    //由于七段数码管一共七个输出变量，相当于一个3-7编码器，太过复杂，所以有必要进行一些简化
    //将七段数码管要输出的数字（0,1,2,3,4）存储在一个数组里
    //根据输入变量对数组元素进行选择即可
    //其中EN，D1，D0 to sel为一个3-3编码器
    //例1.EN=1 D1=d D0=d，则sel=4，a_to_g=A_TO_G[4]
    //例2.EN=0 D1=1 D0=0，则sel=2，a_to_g=A_TO_G[2]

    //数组
    wire[6:0] A_TO_G[4:0];
    assign A_TO_G[0]=7'b000_0001; //0
    assign A_TO_G[1]=7'b100_1111; //1
    assign A_TO_G[2]=7'b001_0010; //2
    assign A_TO_G[3]=7'b000_0110; //3
    assign A_TO_G[4]=7'b100_1100; //4

    //3-3编码器的输入变量
    wire nD1,nD0,nEN;
    assign nD1=~D1; assign nD0=~D0; assign nEN=~EN;

    //3-3编码器的输出变量（数组下标）
    wire[2:0] sel; //一个3位二进制数，表示0~4
    //化简后可发现sel[2]=nEN,sel[1]=EN&D1,sel[0]=EN&D0
    assign sel[2]=nEN;
    assign sel[1]=EN&D1;
    assign sel[0]=EN&D0;

    //以下其实是一个复杂的数据选择器，但可交给计算机去完成
    assign a_to_g=A_TO_G[sel];

    
    




endmodule