module pro_1_tb ();
    reg a,b,sl;
    wire out; //Ϊʲô��wire�Ϳ������أ�
    pro_1_design test1(out,a,b,sl);
    initial begin
        a=1; b=0; sl=0;
        #20 a=1; b=0; sl=1;
        #20 a=0; b=1; sl=0;
        #20 a=0; b=1; sl=1;
        #200 $finish;
    end
endmodule