module Drink_machine_tb ();
    reg CP,Rst_async_n;
    reg[1:0] X;
    wire[1:0] Z;
    parameter no_input=2'b00, fifty_cents=2'b01, one_yuan=2'b10; 

    Drink_machine machine1(.CP(CP),.Rst_async_n(Rst_async_n),.X(X),.Z(Z));

    always #50 CP=~CP;

    initial begin
        CP=0; Rst_async_n=0; X=0;
        #200 Rst_async_n=1;

        #2 X=no_input;
        //全用5毛钱买一杯 
        repeat(3) begin
            #100 X=fifty_cents;
            #2 X=no_input;
        end
        
        
        //用1+0.5元买一杯
        #100 X=one_yuan;
        #2 X=no_input;
        #100 X=fifty_cents; 
        #2 X=no_input;

        //试试找零
        #100 X=one_yuan;
        #2 X=no_input;
        #100 X=one_yuan;
        #2 X=no_input;

    end

endmodule