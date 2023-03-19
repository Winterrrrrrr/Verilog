module binbcd8_top(
    input clk,
    input[7:0] sw,
    output[7:0] led,
    output[6:0] a_to_g,
    output[3:0] an,
    output dp
);
    assign led=sw;

    wire[15:0] x;
    wire[9:0] p;

    binbcd8 B(sw,p);

    assign x={6'b000000,p}; //p??10???4???????16???????

    x7seg X(.x(x),.clk(clk),.a_to_g(a_to_g),.an(an),.dp(dp));

endmodule