module Drink_machine_top2_tb ();
    reg[1:0] Button;
    reg CP_20ms,CP_1s;
    reg Rst_async_n;
    wire[4:0] led;

    parameter one_second=100;
    parameter forty_millisecond=4;
    always #(one_second/2) CP_1s=~CP_1s;
    always #(forty_millisecond/4) CP_20ms=~CP_20ms;

    Drink_machine_top2 U(.Button(Button),.CP_20ms(CP_20ms),.CP_1s(CP_1s),.led(led),.Rst_async_n(Rst_async_n));

    initial begin
        CP_20ms=0; CP_1s=0; Button=0; Rst_async_n=0;
        #(1.5*one_second) Rst_async_n=1;

        repeat(3) begin
        #(1.5*one_second) Button=2'b01;
        #forty_millisecond Button=0;
        end

        #(1.5*one_second) Button=2'b10;
        #forty_millisecond Button=0;
        #(1.5*one_second) Button=2'b01;
        #forty_millisecond Button=0;

        #(1.5*one_second) Button=2'b10;
        #forty_millisecond Button=0;
        #(1.5*one_second) Button=2'b10;
        #forty_millisecond Button=0;

        

        
    end
    
endmodule