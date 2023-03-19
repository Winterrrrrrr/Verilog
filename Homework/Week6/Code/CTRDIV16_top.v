module CTRDIV16_top (
    input CP,
    input[8:0] sw,
    output[8:0] led,
    output[6:0] a_to_g,
    output[3:0] an,
    output dp //小数点输出信号一直是1，但为了代码的完整性和可移植性，
);
    assign led=sw; //给开关加个led指示灯

    //将100MHz的时钟信号分频分成190Hz的时钟信号和24Hz的时钟信号

    wire CP_190,CP_24;
    clkdiv U1(.CP(CP),.CP_190(CP_190),.CP_24(CP_24));
    
    //生成CTRDIV16的4位同步二进制计数器实例

    wire n_clr,n_load;
    wire ENT, ENP;
    wire[3:0] D;
    wire[3:0] Q;
    wire RCO;

    assign n_clr=sw[7];
    assign n_load=sw[6];
    assign ENT=sw[5];
    assign ENP=sw[4];
    assign D=sw[3:0];

    CTRDIV16 U2(.n_clr(n_clr),.n_load(n_load),.ENT(ENT),.ENP(ENP),.CP(CP_24),.D(D),.Q(Q),.RCO(RCO));

    //利用4位同步二进制计数器，构造模10000计数器

    wire[13:0] b;
    wire[16:0] p;
    assign b[3:0]=Q; //b的最低4位就是CTRDIV16的输出Q

    wire n_clr_2; //模10000计数器的复位信号，低电平有效
    assign n_clr_2=sw[8];
    mod10kcnt U3(.n_clr_2(n_clr_2),.RCO(RCO),.b_13_4(b[13:4]));//?10??mod10kcnt????

    //将二进制码转换为BCD码

    bin_to_bcd_14 U4(b,p);

    //将BCD码输出到数码管

    x7seg U5(.x(p[15:0]),.CP(CP_190),.a_to_g(a_to_g),.an(an),.dp(dp));
    
       

    
endmodule