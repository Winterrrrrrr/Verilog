module clkdiv(
    input clk,
    output CP_190,
    output CP_24
);
    reg[23:0] q=24'b0000_0000_0000_0000_0000_0000;
    always@(posedge clk)
        q<=q+1;
    
    assign CP_190=q[18]; //190Hz
    assign CP_24=q[21]; //47.7Hz
    
endmodule