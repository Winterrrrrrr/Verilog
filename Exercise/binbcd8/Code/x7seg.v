module x7seg (
    input[15:0] x,
    input clk,
    output reg[6:0] a_to_g,
    output reg[3:0] an,
    output dp
);
    reg[19:0] clkdiv=20'b0000_0000_0000_0000_0000;

    wire[1:0] s; //用于选择当前的输出数据和输出数码管
    reg[3:0] digit; //用于存储当前的输出数据
    wire[3:0] aen; //用于消隐高位0
    
    assign dp=1;

    assign s=clkdiv[19:18]; //分频
    always@(posedge clk)
        clkdiv<=clkdiv+1;

    assign aen[0]=1; //最低位永远要显示
    assign aen[1]=x[15]|x[14]|x[13]|x[12]|x[11]|x[10]|x[9]|x[8]|x[7]|x[6]|x[5]|x[4]; //只要有一位位1.就说明是有效数据，应该输出
    assign aen[2]=x[15]|x[14]|x[13]|x[12]|x[11]|x[10]|x[9]|x[8];
    assign aen[3]=x[15]|x[14]|x[13]|x[12];

    always@(*) //选择输出内容
        case(s)
        0: digit=x[3:0];
        1: digit=x[7:4];
        2: digit=x[11:8];
        3: digit=x[15:12];
        default digit=x[3:0];
        endcase
    
    always@(*) begin
        an=4'b1111;
        if(aen[s]==1) //如果当前位置的数据不为0，那就显示
            an[s]=0;
    end
    
    always@(*)
        case(digit)
            0:a_to_g<=7'b000_0001;
            1:a_to_g<=7'b100_1111;
            2:a_to_g<=7'b001_0010;
            3:a_to_g<=7'b0000_110;
            4:a_to_g<=7'b100_1100;
            5:a_to_g<=7'b010_0100;
            6:a_to_g<=7'b010_0000;
            7:a_to_g<=7'b000_1111;
            8:a_to_g<=7'b000_0000;
            9:a_to_g<=7'b000_0100;
            'hA:a_to_g<=7'b000_1000;
            'hB:a_to_g<=7'b110_0000;
            'hC:a_to_g<=7'b011_0001;
            'hD:a_to_g<=7'b100_0010;
            'hE:a_to_g<=7'b011_0000;
            'hF:a_to_g<=7'b011_1000;
            default:a_to_g<=7'b000_0001; //0
        endcase
endmodule