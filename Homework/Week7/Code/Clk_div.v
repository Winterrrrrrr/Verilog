`timescale 1ms/1ms
module Clk_div (
    input CP,
    //input Rst_async_n,
    output reg CP_2ms, //数码管输出信号
    output reg CP_20ms //按键消抖用的时钟信号，FSM的触发信号
); 
    parameter N=9999_9999; //100MHz
    reg[31:0] count1,count2; //必须定义两个不同的count！！！！

    always @(posedge CP) begin
        CP_2ms<=0;
        if(count1<N/500) //500Hz
            count1<=count1+1;
        else begin
            count1<=0;
            CP_2ms<=1;
        end
    end

    always @(posedge CP) begin
        CP_20ms<=0;
        if(count2<N/50) //50Hz
            count2<=count2+1;
        else begin
            count2<=0;
            CP_20ms<=1;
        end
    end
    
endmodule
