module test(
    input[3:0] x,
    input[3:0] AN,
    output[6:0] a_to_g
);
    assign AN=4'b1110; //只让最后一个管子亮（低电平有效）
    assign a_to_g=7'b0000001;
endmodule