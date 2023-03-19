module mod10kcnt_top (
    input clk,
    input clr,
    output led,
    output[6:0] a_to_g,
    output[3:0] an,
    output dp
);
    assign led=clr;

    wire[13:0] b;
    wire[16:0] p;
    wire CP_190,CP_24;

    clkdiv U1(.clk(clk),.CP_190(CP_190),.CP_24(CP_24));

    mod10kcnt U2(.clr(clr),.clk(CP_24),.Q(b));

    bin_to_bcd_14 U3(.b(b),.p(p));

    x7seg U4(.x(p[15:0]),.CP(CP_190),.a_to_g(a_to_g),.an(an),.dp(dp));

    
endmodule