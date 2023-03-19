module pencode42 (
    input[3:0] n_x,
    output reg[1:0] y,
    output reg n_valid
);
    //x0的优先级最高，以此类推
    integer i;
    reg[3:0] n_x1;
    always @(n_x) begin
        y=0;
        n_valid=1;
        n_x1=n_x;
        for(i=0;i<4;i=i+1)
            if(n_x1[i]==0) begin
                y=i;
                n_valid=0;
                n_x1=4'b1111;//剩下的都不用管了
            end
    end
    
endmodule