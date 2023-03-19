`timescale 1ms/1ms
module Drink_machine_tb ();
    reg [1:0] Button;
    reg CP;
    //input CP_20ms,CP_1s,
    reg Rst_async_n;
    wire [1:0] cur_state;
    wire [1:0] Z1;

    always #10 CP=~CP;
    
    Drink_machine drink(.CP_20ms(CP),.X(Button),.Rst_async_n(Rst_async_n),.cur_state(cur_state),.Z(Z1));

    initial begin
        CP=0; Button=2'b00; Rst_async_n=1;
        #3  Rst_async_n =0;
        #10  Rst_async_n =1;
        #300 Button=2'b01;
        #100 Button=0; 
        #300 Button=2'b01;
        #100 Button=0; 
        #300 Button=2'b01;
        #100 Button=0; 
        #300 Button=2'b10;
        #100 Button=0; 
        #300 Button=2'b01;
        #100 Button=0; 
        #300 Button=2'b10;
        #100 Button=0; 
        #300 Button=2'b10;
        #100 Button=0; 
    end

    wire A,B;
    assign A=Button[0];
    assign B=Button[1];

    wire Y,Z;
    assign Y=Z1[1];
    assign Z=Z1[0];

    reg [1:0] S;
    always @(*) begin
        case (cur_state)
            3'b000: S=2'b00;
            3'b010: S=2'b01;
            3'b011: S=2'b10;
            3'b001: S=2'b00;
            3'b100: S=2'b00;
            default: S=2'b00;
        endcase
        
    end



endmodule