`timescale 1ns / 1ps

module top_tb();

logic[2:0] A,B;
logic a,b,c,d,e,f,g;

int num_prueba = 0;

top DUT(
.A(A),.B(B),
.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g));

task automatic suma( input logic [2:0] A1, input logic [2:0] B1);
A = A1;
B = B1;
#5;

case ({a, b, c, d, e, f, g})

7'b1111110: begin 
                if(A + B == 0)
                    $display("aprobado");
                else
                    $display("no funca, deberia ser 0");
            end

7'b0110000: begin 
                if(A + B == 1)
                    $display("aprobado");
                else
                    $display("no funca, deberia ser 1");
            end

7'b1101101: begin 
                if(A + B == 2)
                    $display("aprobado");
                else
                    $display("no funca, deberia ser 2");
            end

7'b1111001: begin 
                if(A + B == 3)
                    $display("aprobado");
                else
                    $display("no funca, deberia ser 3");
            end

7'b0110011: begin 
                if(A + B == 4)
                    $display("aprobado");
                else
                    $display("no funca, deberia ser 4");
            end

7'b1011011: begin 
                if(A + B == 5)
                    $display("aprobado");
                else
                    $display("no funca, deberia ser 5");
            end

7'b1011111: begin 
                if(A + B == 6)
                    $display("aprobado");
                else
                    $display("no funca, deberia ser 6");
            end

7'b1110000: begin 
                if(A + B == 7)
                    $display("aprobado");
                else
                    $display("no funca, deberia ser 7");
            end

7'b1111111: begin 
                if(A + B == 8)
                    $display("aprobado");
                else
                    $display("no funca, deberia ser 8");
            end

7'b1111011: begin 
                if(A + B == 9)
                    $display("aprobado");
                else
                    $display("no funca, deberia ser 9");
            end

7'b1110111: begin 
                if(A + B == 10)
                    $display("aprobado");
                else
                    $display("no funca, deberia ser 10");
            end

7'b0011111: begin 
                if(A + B == 11)
                    $display("aprobado");
                else
                    $display("no funca, deberia ser 11");
            end

7'b1001110: begin 
                if(A + B == 12)
                    $display("aprobado");
                else
                    $display("no funca, deberia ser 12");
            end

7'b0111101: begin 
                if(A + B == 13)
                    $display("aprobado");
                else
                    $display("no funca, deberia ser 13");
            end

7'b1001111: begin 
                if(A + B == 14)
                    $display("aprobado");
                else
                    $display("no funca, deberia ser 14");
            end

default: $display("caso no valido");
endcase

num_prueba++;

endtask

initial begin

for(int i = 0; i < 8; i++) begin
    for(int j = 0; j < 8; j++) begin
        suma(i[2:0], j[2:0]);
        #20;
    end
end

$stop;

end
endmodule
