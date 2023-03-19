module Drink_machine_top (
    input[1:0] Button,
    input CP,
    //input CP_20ms,CP_1s,
    input Rst_async_n,
    output[4:0] led
);
    wire CP_20ms,CP_1s;
    wire[1:0] X;
    wire[1:0] Z;
    assign led={Rst_async_n,Button,Z};

    //对时钟进行分频
    Clk_div U1(.CP(CP),.CP_20ms(CP_20ms),.CP_1s(CP_1s));

    //对按键进行消抖
    Key_dejitter U2(.CP_20ms(CP_20ms),.Button_50cents(Button[0]),.Button_1yuan(Button[1]),.X(X));

    //饮料机
    Drink_machine U3(.CP(CP_1s),.Rst_async_n(Rst_async_n),.X(X),.Z(Z));
    
endmodule