module CircuitA(bin, A);
input  [3:0] bin;
output [3:0] A;

assign A = bin - 4'd10; // 4bit, 10 decimal number

endmodule