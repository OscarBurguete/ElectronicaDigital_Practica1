module sum(
input logic [2:0] opA, opB,
output logic [3:0] salida);

always_comb begin

salida = opA + opB;

end

endmodule
