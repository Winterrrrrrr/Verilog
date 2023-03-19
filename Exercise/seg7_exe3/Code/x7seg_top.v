module x7seg_top (
    input clk,
    input[15:0] sw,
    output[6:0] a_to_g,
    output[15:0] led, 
    output[3:0] an,
    output dp
);
    assign led=sw;
    x7seg(.clk(clk),.x(sw),.a_to_g(a_to_g),.an(an),.dp(dp));
    
endmodule