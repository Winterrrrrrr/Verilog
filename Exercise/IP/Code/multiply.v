module multiply ();

//似乎这样就不用另外写一个仿真文件了？
    reg CLK=0;
    always #50 CLK=~CLK;
    wire[3:0] A=6; //可以直接十进制赋值
    wire[3:0] B=7;
    wire[7:0] P;

    mult_gen_0 mul (
  .CLK(CLK),  // input wire CLK  //那为啥前面定义的是reg？
  .A(A),      // input wire [3 : 0] A
  .B(B),      // input wire [3 : 0] B
  .P(P)      // output wire [7 : 0] P
);
    
endmodule