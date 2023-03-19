module seg7_tb();
    reg[3:0] x;
    reg clk;
    wire[6:0] a_to_g;
    integer i;
    seg7 data(.x(x),.a_to_g(a_to_g));
    always
        #5 clk=~clk;
    initial begin
        clk=0;
        x=4'b0000;
        for(i=0; i<16; i=i+1)
            #10 x=i;
        #200 $finish;
    end
endmodule