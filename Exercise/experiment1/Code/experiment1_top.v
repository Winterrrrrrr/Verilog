module experiment1 (
    input[3:0] K,
    output[6:0] a_to_g
);
    wire[1:0] B;
    pencode42 pencode(.n_x(K),.y(B));
    wire[3:0] x;
    assign x={2'b00,B};
    seg7 seg(.x(x),.a_to_g(a_to_g));

    
endmodule