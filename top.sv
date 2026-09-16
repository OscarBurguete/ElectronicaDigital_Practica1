module top(
input logic[2:0] A,B,
output logic a,b,c,d,e,f,g);

logic [3:0] seg; 

display1 disp(
.A(seg[0]),.B(seg[1]),
.C(seg[2]),.D(seg[3]),
.a(a),
.b(b),
.c(c),
.d(d),
.e(e),
.f(f),
.g(g));

sum suma(
.opA(A),
.opB(B),
.salida(seg));

endmodule
