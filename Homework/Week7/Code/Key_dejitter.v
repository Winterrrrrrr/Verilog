module Key_dejitter (
    input Button_50cents,
    input Button_1yuan,
    input CP_20ms,
    output reg[1:0] X
);
    always @(posedge CP_20ms) begin
        X={Button_1yuan,Button_50cents};
        if(X==2'b11) //无效输入
            X=0;
    end

    
endmodule