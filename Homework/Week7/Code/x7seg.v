module x7seg (
    input Rst_async_n,
    input[2:0] cur_state,
    input[1:0] Z,
    input CP,
    output reg[6:0] a_to_g,
    output reg[3:0] an
);
    //功能说明：左边两个管子用于输出Z，右边两个管子用于输出当前状态
    parameter S0=3'b000,S1=3'b010,S2=3'b011,S3=3'b001,S4=3'b100;
    reg[1:0] s; //用于选择当前的输出数据和输出数码管
    reg[3:0] digit; //用于存储当前的输出数据
    reg[15:0] x;

    always @(cur_state,Z) begin
        x[15:8]={3'b000,Z[1],3'b000,Z[0]};
        case(cur_state)
        S0: x[7:0]=0;
        S1: x[7:0]=8'b0000_0101; //0.5
        S2: x[7:0]=8'b0001_0000; //1.0
        S3: x[7:0]=8'b0001_0101; //1.5
        S4: x[7:0]=8'b0010_0000; //2.0
        default x[7:0]=0;
        endcase
        
    end
    
    
    always@(posedge CP) begin
        if(s<4) s<=s+1;
        else s<=0;
    end
        

    always@(s,x) //选择输出内容
        case(s)
        0: digit=x[3:0];
        1: digit=x[7:4];
        2: digit=x[11:8];
        3: digit=x[15:12];
        default digit=x[3:0];
        endcase
    
    always@(s,Rst_async_n) begin
        if(Rst_async_n==0)
            an=4'b1111;
        else begin
            an=4'b1111;
            an[s]=0;
        end
        
    end
    
    always@(digit)
        case(digit)
            0:a_to_g<=7'b000_0001;
            1:a_to_g<=7'b100_1111;
            2:a_to_g<=7'b001_0010;
            5:a_to_g<=7'b010_0100;
            default:a_to_g<=7'b000_0001; //0
        endcase
endmodule