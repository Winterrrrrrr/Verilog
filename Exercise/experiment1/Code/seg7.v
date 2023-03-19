//设计单个16进制7段数码管
module seg7 (
    input[3:0] x,
    output[3:0] AN,
    output reg[6:0] a_to_g
);
    assign AN=4'b1110; //只让最后一个管子亮（低电平有效）

    always@(*) //表示任何一个信号变化时，该语句被执行
        case(x)
            0:a_to_g<=7'b000_0001;
            1:a_to_g<=7'b100_1111;
            2:a_to_g<=7'b001_0010;
            3:a_to_g<=7'b0000_110;
            4:a_to_g<=7'b100_1100;
            5:a_to_g<=7'b010_0100;
            6:a_to_g<=7'b010_0000;
            7:a_to_g<=7'b000_1111;
            8:a_to_g<=7'b000_0000;
            9:a_to_g<=7'b000_0100;
            'hA:a_to_g<=7'b000_1000;
            'hB:a_to_g<=7'b110_0000;
            'hC:a_to_g<=7'b011_0001;
            'hD:a_to_g<=7'b100_0010;
            'hE:a_to_g<=7'b011_0000;
            'hF:a_to_g<=7'b011_1000;
            default:a_to_g<=7'b000_0001; //0
        endcase
endmodule