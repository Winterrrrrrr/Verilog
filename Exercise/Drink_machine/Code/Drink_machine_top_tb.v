module Drink_machine_top_tb ();
    reg[1:0] Button;
    reg CP;
    reg Rst_async_n;
    wire[4:0] led;

    parameter one_second=100000000;
    parameter forty_millisecond=4000000;
    always #1 CP=~CP;

    Drink_machine_top U(.Button(Button),.CP(CP),.led(led),.Rst_async_n(Rst_async_n));

    initial begin
        CP=0; Button=0; Rst_async_n=0;
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