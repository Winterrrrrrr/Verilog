module CTRDIV16_tb();
    reg n_clr,n_load;
    reg ENT,ENP;
    reg CP=0;
    reg[3:0] D;
    wire[3:0] Q;
    wire RCO;

    CTRDIV16 counter(n_clr,n_load,ENT,ENP,CP,D,Q,RCO);

    always #10 CP=~CP;

    initial begin
        //验证第一栏
        n_clr=0; n_load=0; ENP=0; ENT=1;
        D=4'b0101; //从5开始计数
        #15 n_clr=0; n_load=0; ENP=1; ENT=0;
        #20 n_clr=0; n_load=1; ENP=0; ENT=0;
        #20 n_clr=0; n_load=1; ENP=1; ENT=1;

        //验证第二栏
        #80 n_clr=1; n_load=0; ENP=0; ENT=1;
        #20 n_clr=1; n_load=0; ENP=1; ENT=0;
        #20 n_clr=1; n_load=0; ENP=1; ENT=1;

        //验证第三栏
        #80 n_clr=1; n_load=1; ENP=1; ENT=1;

        //验证第四栏
        #360 n_clr=1; n_load=1; ENP=0; ENT=0;
        #20 n_clr=1; n_load=1; ENP=0; ENT=1;

        //验证第五栏
        #80 n_clr=1; n_load=1; ENP=0; ENT=0;
        #20 n_clr=1; n_load=1; ENP=1; ENT=0;

    end
endmodule