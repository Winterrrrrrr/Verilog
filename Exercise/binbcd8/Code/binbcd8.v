module binbcd8 (
    input[7:0] b,
    output reg[9:0] p //8位二进制数最大1111_1111，对应255，BCD码是10 0101 0101
);
    //大4加3法，原理没懂
    reg[17:0] z;
    always@(*) begin
        z=18'b00_0000_0000_0000_0000;
        z[10:3]=b; //直接把b左移3位了
        repeat(5) //一共8次，前面已经移动了5次
        begin
            if(z[11:8]>4)
                z[11:8]=z[11:8]+3;
            else;
            if(z[15:12]>4)
                z[15:12]=z[15:12]+3;
            else;
            //最高的4位肯定不会大于4，因为连255都只有0010
            z[17:1]=z[16:0]; //左移一位
        end
        p=z[17:8];
    end
    
endmodule