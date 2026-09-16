`timescale 1ns / 1ps

module display1_tb();

logic A,B,C,D;
logic a,b,c,d,e,f,g;

display1 dut(
.A(A),.B(B),.C(C),.D(D),
.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g));

initial begin
D = 1'b0; C = 1'b0; B = 1'b0; A = 1'b0;  //0
#20;

D = 1'b0; C = 1'b0; B = 1'b0; A = 1'b1;  //1
#20;

D = 1'b0; C = 1'b0; B = 1'b1; A = 1'b0;  //2
#20;

D = 1'b0; C = 1'b0; B = 1'b1; A = 1'b1;  //3
#20;

D = 1'b0; C = 1'b1; B = 1'b0; A = 1'b0;  //4
#20;

D = 1'b0; C = 1'b1; B = 1'b0; A = 1'b1;  //5
#20;

D = 1'b0; C = 1'b1; B = 1'b1; A = 1'b0;  //6
#20;

D = 1'b0; C = 1'b1; B = 1'b1; A = 1'b1;  //7
#20;

D = 1'b1; C = 1'b0; B = 1'b0; A = 1'b0;  //8
#20;

D = 1'b1; C = 1'b0; B = 1'b0; A = 1'b1;  //9
#20;

D = 1'b1; C = 1'b1; B = 1'b1; A = 1'b1;  //Nothing
#20;

$stop;

end


endmodule
