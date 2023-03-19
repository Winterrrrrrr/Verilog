module clkdiv(
    input CP,
    output CP_190,
    output CP_24
);
    reg[23:0] q=0; //问题：有必要赋初值吗？
    always@(posedge CP) //CP信号是100MHz，q也以100MHz的频率加1
        q<=q+1;
    
    assign CP_190=q[18]; //100MHz÷(2^19)=190Hz
    assign CP_24=q[21]; //100MHz÷(2^22)=24Hz
    
endmodule