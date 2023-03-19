module seg7 (
    input D1,
    input D0,
    input EN,
    output[3:0] AN,
    output[2:0] led,
    output reg[6:0] a_to_g //从左往右依次是abcdefg,即a_to_g[6]=a
);
    assign AN=4'b1110; //只让最后一个管子亮（低电平有效）
    assign led={EN,D1,D0}; //控制开关指示灯

    wire[1:0] D1D0; //拼接输入，方便写case语句
    assign D1D0={D1,D0};
    always @(D1D0,EN) begin
        if(EN==1) begin
        case(D1D0)
            0:a_to_g=7'b000_0001;
            1:a_to_g=7'b100_1111;
            2:a_to_g=7'b001_0010;
            3:a_to_g=7'b000_0110;
            default:a_to_g=7'b000_0001; //默认是0
        endcase
        end
        else begin
            a_to_g=7'b100_1100;
        end
    end

    
endmodule