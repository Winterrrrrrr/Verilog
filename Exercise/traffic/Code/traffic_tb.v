module traffic_tb ();
    reg clk_3,clr;
    wire[5:0] lights;

    traffic U(.clk_3(clk_3),.clr(clr),.lights(lights));

    always #10 clk_3=~clk_3;

    initial begin
        clk_3=0;
        clr=1;
        #20 clr=0;
    end
endmodule