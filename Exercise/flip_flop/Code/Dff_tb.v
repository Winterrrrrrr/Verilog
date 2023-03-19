module Dff_tb ();
    reg clk=0; //??????
    reg clr;
    reg D;
    wire Q;
    Dff dff(clk,clr,D,Q);
    always begin
        #10 clk<=~clk;
    end
    initial begin
        D=0; clr=0;
        #15 D=1;
        #15 D=0; 
        #15 D=1;
        #15 D=0;
        #15 D=1;
        #100 clr=1;
    end
    
endmodule