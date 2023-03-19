module seg7 (
    input D1,
    input D0,
    input EN,
    output[3:0] AN,
    output[2:0] led,
    output[6:0] a_to_g //从左往右依次是abcdefg,即a_to_g[6]=a
);

    assign AN=4'b1110; //只让最后一根管子亮
    assign led={EN,D1,D0}; //控制开关指示灯

    //直接对3-7编码器进行化简，对最终函数进行描述
    //a=EN*D1'*D0+EN'
    //b=0
    //c=EN*D1*D0'
    //d=EN*D1'*D0+EN'
    //e=EN*D0+EN'
    //f=EN*(D0+D1)
    //g=EN*D1'

    wire nD1,nD0,nEN;
    assign nD1=~D1; assign nD0=~D0; assign nEN=~EN;
    
    assign a_to_g[6]=(EN&nD1&D0)|nEN;
    assign a_to_g[5]=0;
    assign a_to_g[4]=EN&D1&nD0;
    assign a_to_g[3]=(EN&nD1&D0)|nEN;
    assign a_to_g[2]=(EN&D0)|nEN;
    assign a_to_g[1]=EN&(D1|D0);
    assign a_to_g[0]=EN&nD1;

endmodule