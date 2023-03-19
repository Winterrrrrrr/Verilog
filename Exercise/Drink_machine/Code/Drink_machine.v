module Drink_machine (
    input CP, Rst_async_n,
    input[1:0] X,
    output reg[1:0] Z
);
    reg[2:0] cur_state,next_state;
    reg XP;
    parameter no_input=2'b00, fifty_cents=2'b01, one_yuan=2'b10; 
    parameter S0=3'b000,S1=3'b010,S2=3'b011,S3=3'b001,S4=3'b100;
    parameter Do_nothing=2'b00,Only_drink=2'b10, Drink_and_change=2'b11;

    //状态寄存器
    always @(posedge CP,posedge Rst_async_n) begin //异步置零
        if(Rst_async_n==0) begin
            cur_state<=S0;
            //next_state<=S0;
        end
        else
            cur_state<=next_state;
    end

    always@ (X) begin //不知道为何，在状态方程中always语句使用posedge X[1] or poedge X[2]时可以仿真，但无法综合，提示ambiguous clock，所以在这里统一成一个信号XP
        XP=0;
        if(X) XP=1; 
    end

    //状态方程
    always @(posedge XP) begin //为什么posedge X就不对？为何会报错说ambiguous clock?
        case (cur_state)
            S0: case (X)
                no_input: next_state=S0;
                fifty_cents: next_state=S1;
                one_yuan: next_state=S2;
                default: next_state=S0; //没有利用任意项，不太好，但利用的话化简起来又很繁琐
            endcase 
            S1: case (X)
                no_input: next_state=S1;
                fifty_cents: next_state=S2;
                one_yuan: next_state=S3;
                default: next_state=S1;
            endcase 
            S2: case (X)
                no_input: next_state=S2;
                fifty_cents: next_state=S3;
                one_yuan: next_state=S4;
                default: next_state=S2;
            endcase 
            S3: case (X)
                no_input: next_state=S0;
                fifty_cents: next_state=S1;
                one_yuan: next_state=S2;
                default: next_state=S0;
            endcase 
            S4: case (X)
                no_input: next_state=S0;
                fifty_cents: next_state=S1;
                one_yuan: next_state=S2;
                default: next_state=S0;
            endcase 
            default: case (X) //冗余态默认按S0处理，不然亏钱
                no_input: next_state=S0;
                fifty_cents: next_state=S1;
                one_yuan: next_state=S2;
                default: next_state=S0;
            endcase 
        endcase
    end

    //输出方程
    always @(cur_state) begin
        case (cur_state)
            S0: Z=Do_nothing;
            S1: Z=Do_nothing;
            S2: Z=Do_nothing;
            S3: Z=Only_drink; //已收1.5元，输出一杯饮料
            S4: Z=Drink_and_change; //已收2元，输出饮料并找零
            default: Z=Do_nothing; //默认啥都不干
        endcase

    end


    
endmodule