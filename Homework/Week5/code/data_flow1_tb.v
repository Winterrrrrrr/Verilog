module data_flow1_tb ();
    reg EN,D1,D0;
    wire[3:0] AN;
    wire[6:0] a_to_g;
    wire[2:0] led;
    seg7 test(D1,D0,EN,AN,led,a_to_g);
    
    initial begin
        EN=1; D1=0; D0=0;
        #10 EN=1; D1=0; D0=1;
        #10 EN=1; D1=1; D0=0;
        #10 EN=1; D1=1; D0=1;
        #10 EN=1; D1=1; D0=0;
        #10 EN=0; D1=1; D0=0;
    end
    
endmodule