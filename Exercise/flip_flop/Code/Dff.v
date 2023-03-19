//设计一个正边沿触发的，带异步复位端的D触发器
module Dff (
    input clk,
    input clr,
    input D,
    output reg Q
);
    always@ (posedge clk,posedge clr)
        if(clr==1)
            Q<=0;
        else
            Q<=D;
endmodule