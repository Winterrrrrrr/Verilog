module Drink_machine (
    input CP_20ms, Rst_async_n,
    input[1:0] X,
    output reg[2:0] cur_state,
    output reg[1:0] Z
);
    reg[2:0] next_state;
    reg rst_next_state_n;
    reg[1:0] pre_X; //X的一个寄存器，用于防止重复计数（一个输入信号有效期间有多个时钟信号有效沿）
    reg[2:0] pre_next_state; //next_state的寄存器，功能同上
    parameter no_input=2'b00, fifty_cents=2'b01, one_yuan=2'b10; 
    parameter S0=3'b000,S1=3'b010,S2=3'b011,S3=3'b001,S4=3'b100;
    parameter Do_nothing=2'b00,Only_drink=2'b10, Drink_and_change=2'b11;



    //状态转移方程
    always @(posedge CP_20ms,negedge Rst_async_n) begin //异步置零
        if(Rst_async_n==0) begin
            cur_state<=S0;
            rst_next_state_n<=0; 
            //传递next_state的复位信号，不然光复位cur_state没用，turn on后下一个时钟周期cur_state又变回next_state
            //同时应注意不能在不同的always块里给同一个变量赋值，如这里不能直接next_state<=S0，只能通过一个置零信号来传递    
        end
        else begin
            rst_next_state_n<=1;
            cur_state<=next_state;
        end
    end

    //X的寄存器
    always @(posedge CP_20ms) begin 
        pre_X=X;
        pre_next_state=next_state;
    end

    //激励方程
    always @(*) begin 
        if(!rst_next_state_n) 
            next_state=S0;
        else if(X==pre_X) 
            next_state=pre_next_state;//x还没变，跳过
        else begin 
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