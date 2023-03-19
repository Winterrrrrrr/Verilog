module experiment1_tb ();
    reg[3:0] K;
    wire[6:0] a_to_g;
    integer i;
    experiment1 experiment(.K(K),.a_to_g(a_to_g));
    initial begin
        K=0;
        for(i=1;i<16;i=i+1) #10 K=i;
        #10 $finish;
    end


    
endmodule