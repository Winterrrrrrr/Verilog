module Clk_div (
    input CP,
    output reg CP_20ms, //按键消抖用的时钟信号
    output reg CP_1s //饮料机的触发信号
); 
    parameter N=99999999; //100MHz
    reg count1,count2; //必须定义两个不同的count！！！！

    always @(posedge CP) begin
        CP_20ms<=0;
        if(count1<N/50) //50Hz
            count1<=count1+1;
        else begin
            count1<=0;
            CP_20ms<=1;
        end
    end

    always @(posedge CP) begin
        CP_1s<=0;
        if(count2<N) //50Hz
            count2<=count2+1;
        else begin
            count2<=0;
            CP_1s<=1;
        end
    end
    
endmodule
