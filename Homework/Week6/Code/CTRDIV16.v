module CTRDIV16 (
    input n_clr,n_load,
    input ENT, ENP,
    input CP,
    input[3:0] D,
    output reg[3:0] Q,
    output reg RCO
);
    //分析电路结构可知，该器件清零和置数都是同步的
    always@(posedge CP)
        if(n_clr==0) //清零
            begin
                Q<=0;
                RCO<=0;
            end
        else if((n_clr==1)&&(n_load==0)) //正常计数
            Q<=D;
        else if(n_clr&n_load&ENP&ENT==1)
            if(Q==15) begin
                Q<=0;
                RCO=1;
                end
            else begin
                Q<=Q+1;
                RCO<=0;
                end
        else if((n_clr&n_load==1)&&ENP==0); //Q和RCO都保持不变
        else if((n_clr&n_load==1)&&ENT==0) //Q保持不变，RCO置零
            RCO<=0;
        else begin //默认置零
            Q<=0; 
            RCO<=0;
         end 
        
    

    
endmodule