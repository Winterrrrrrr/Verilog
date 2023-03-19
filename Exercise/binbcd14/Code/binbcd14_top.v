module binbcd14_top(
    input clk,
    input[13:0] sw,
    output[13:0] led,
    output[6:0] a_to_g,
    output[3:0] an,
    output dp
);
    assign led=sw;

    wire[16:0] p;

    binbcd14 B(sw,p);

    x7seg X(.x(p[15:0]),.clk(clk),.a_to_g(a_to_g),.an(an),.dp(dp));

endmodule