`timescale 1ms/1ms
module Drink_machine_top (
    input[1:0] Button,
    input CP,
    //input CP_20ms,CP_1s,
    input Rst_async_n,
    output[6:0] a_to_g,
    output[3:0] an,
    output[2:0] led
);
    wire CP_2ms,CP_20ms;
    wire[1:0] X;
    wire[1:0] Z;
    wire[2:0] cur_state;
    assign led={Rst_async_n,Button};

    //对时钟进行分频
    Clk_div U1(.CP(CP),.CP_20ms(CP_20ms),.CP_2ms(CP_2ms));

    //对按键进行消抖
    Key_dejitter U2(.CP_20ms(CP_20ms),.Button_50cents(Button[0]),.Button_1yuan(Button[1]),.X(X));

    //饮料机
    Drink_machine U3(.CP_20ms(CP_20ms),.Rst_async_n(Rst_async_n),.cur_state(cur_state),.X(X),.Z(Z));

    //数码管
    x7seg U4(.Rst_async_n(Rst_async_n),.CP(CP_2ms),.cur_state(cur_state),.Z(Z),.a_to_g(a_to_g),.an(an));
    
endmodule