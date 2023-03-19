module mod10kcnt (
    input n_clr_2,//低电平有效
    input RCO,
    output reg[9:0] b_13_4 
    //9999对应的二进制码有14位，而最低4位是4位同步二进制计数器在计数
    //5~14位只需要当最低4位产生进位输出信号时+1即可
);

    always@(posedge RCO,posedge n_clr_2)
        if(n_clr_2==0)
            b_13_4<=0;
        else if(b_13_4==9999)
            b_13_4<=0; //重新计数
        else begin
            b_13_4<=b_13_4+1;
        end

endmodule