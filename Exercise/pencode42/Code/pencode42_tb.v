module pencode42_tb ();
    reg[3:0] K;
    wire[1:0] B;
    wire E;
    integer i;
    pencode42 pencode(.n_x(K),.y(B),.n_valid(E));
    initial begin
        K=0;
        for(i=1;i<16;i=i+1) #10 K=i;
        #10 $finish;
    end


    
endmodule