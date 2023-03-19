module mod10kcnt (
    input clr,
    input clk,
    output reg[13:0] Q
);
    always@(posedge clk,posedge clr)
    begin
        if(clr==1)
            Q<=0;
        else if(Q==9999)
            Q<=0;
        else Q<=Q+1;
    end
    
endmodule