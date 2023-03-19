module traffic (
    input clk_3,
    input clr,
    output reg[5:0] lights
);
    reg[2:0] cur_state, next_state;
    reg[3:0] count;
    parameter S0=3'b000, S1=3'b001,S2=3'b010,
            S3=3'b011,S4=3'b100,S5=3'b101;
    parameter SEC5=4'b1110, SEC1=4'b0010;

    always@ (posedge clk_3, posedge clr) begin
        if(clr==1) begin
            cur_state<=S0;
            count<=0;
        end
        else
            cur_state<=next_state;
            count<=count+1;
    end

    always @(cur_state,count) begin
        case (cur_state)
            S0: if(count<SEC5)
                begin
                    next_state=S0;
                end
                else begin
                    next_state=S1;
                end
            S1: if(count<SEC1)
                begin
                    next_state=S1;
                end
                else begin
                    next_state=S2;
                end
            S2: if(count<SEC1)
                begin
                    next_state=S2;
                end
                else begin
                    next_state=S3;
                end
            S3: if(count<SEC5)
                begin
                    next_state=S3;
                end
                else begin
                    next_state=S4;
                end
            S4: if(count<SEC1)
                begin
                    next_state=S4;
                end
                else begin
                    next_state=S5;
                end
            S5: if(count<SEC1)
                begin
                    next_state=S5;
                end
                else begin
                    next_state=S0;
                end
            default: begin
                    next_state=S0;
                end
        endcase
    end

    always @(cur_state) begin
        count=0;
        case(cur_state)
            S0:lights=6'b100001;
            S1:lights=6'b100010;
            S2:lights=6'b100100;
            S3:lights=6'b001100;
            S4:lights=6'b010100;
            S5:lights=6'b100100;
            default lights=6'b100001;
        endcase
    end
    
endmodule