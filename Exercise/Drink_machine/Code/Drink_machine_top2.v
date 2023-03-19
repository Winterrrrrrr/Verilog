module Drink_machine_top2 (
    input[1:0] Button,
    input CP_20ms,CP_1s,
    //input CP_20ms,CP_1s,
    input Rst_async_n,
    output[4:0] led
);
    wire[1:0] X;
    wire[1:0] Z;
    assign led={Rst_async_n,Button,Z};

    //对按键进行消抖
    Key_dejitter U2(.CP_20ms(CP_20ms),.Button_50cents(Button[0]),.Button_1yuan(Button[1]),.X(X));

    //饮料机
    Drink_machine U3(.CP(CP_1s),.Rst_async_n(Rst_async_n),.X(X),.Z(Z));
    
endmodule