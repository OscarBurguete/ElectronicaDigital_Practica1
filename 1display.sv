module display1(

input logic A,B,C,D,
output logic a,b,c,d,e,f,g);

always @(*) begin
case ({D, C, B, A})
4'b0000: {a, b, c, d, e, f, g} = 7'b1111110; // 0
4'b0001: {a, b, c, d, e, f, g} = 7'b0110000; // 1
4'b0010: {a, b, c, d, e, f, g} = 7'b1101101; // 2
4'b0011: {a, b, c, d, e, f, g} = 7'b1111001; // 3
4'b0100: {a, b, c, d, e, f, g} = 7'b0110011; // 4
4'b0101: {a, b, c, d, e, f, g} = 7'b1011011; // 5
4'b0110: {a, b, c, d, e, f, g} = 7'b1011111; // 6
4'b0111: {a, b, c, d, e, f, g} = 7'b1110000; // 7
4'b1000: {a, b, c, d, e, f, g} = 7'b1111111; // 8
4'b1001: {a, b, c, d, e, f, g} = 7'b1111011; // 9
4'b1010: {a, b, c, d, e, f, g} = 7'b1110111; // 10
4'b1011: {a, b, c, d, e, f, g} = 7'b0011111; // 11
4'b1100: {a, b, c, d, e, f, g} = 7'b1001110; // 12
4'b1101: {a, b, c, d, e, f, g} = 7'b0111101; // 13
4'b1111: {a, b, c, d, e, f, g} = 7'b1001111; // 14
default: {a, b, c, d, e, f, g} = 7'b0000000; // Apagar todo en caso inválido

endcase
end
endmodule
