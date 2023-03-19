module seg7 (
    input D1,
    input D0,
    input EN,
    output[3:0] AN,
    output[2:0] led,
    output wire[6:0] a_to_g //从左往右依次是abcdefg,即a_to_g[6]=a
);
    //似乎无法像数据流描述2那样取巧，只能列出最原始的函数进行设计
    //经化简可得
    //a=EN*D1'*D0+EN'
    //b=0
    //c=EN*D1*D0'
    //d=EN*D1'*D0+EN'
    //e=EN*D0+EN'
    //f=EN*(D0+D1)
    //g=EN*D1'

    assign AN=4'b1110; //只让最后一根管子亮
    //问题：结构化描述一定要细化到门级，不能出现assign吗？
    assign led={EN,D1,D0}; //控制开关指示灯

    a_d A(D1,D0,EN,a_to_g[6]);
    b B(a_to_g[5]);
    c C(D1,D0,EN,a_to_g[4]);
    a_d D(D1,D0,EN,a_to_g[3]);
    e E(D0,EN,a_to_g[2]);
    f F(D1,D0,EN,a_to_g[1]);
    g G(D1,EN,a_to_g[0]);
    
endmodule

//a=d=EN*D1'*D0+EN'
module a_d(input D1,
    input D0,
    input EN,
    output a_d);
    not A_D_1(nD1,D1);
    not A_D_2(nEN,EN);
    and A_D_3(EN_and_nD1_and_D0,EN,nD1,D0);
    or A_D_4(a_d,EN_and_nD1_and_D0,nEN);
endmodule

//b=0
module b(output b);
    assign b=0;  
endmodule

//c=EN*D1*D0'
module c(input D1,
    input D0,
    input EN,
    output c);
    not C1(nD0,D0);
    and C2(c,EN,D1,nD0);
endmodule

//e=EN*D0+EN'
module e(input D0,
    input EN,
    output e);
    not E1(nEN,EN);
    and E2(EN_and_D0,EN,D0);
    or E3(e,EN_and_D0,nEN);
endmodule

//f=EN*(D0+D1)
module f(input D1,
    input D0,
    input EN,
    output f);
    or F1(D1orD0,D1,D0);
    and F2(f,EN,D1orD0);
endmodule

//g=EN*D1'
module g(input D1,
    input EN,
    output g);
    not G1(nD1,D1);
    and G2(g,EN,nD1);
endmodule


