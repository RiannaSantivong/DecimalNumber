module DecimalNumber (SW, HEX0, HEX1); // SW switches, HEX 0 display, HEX 1 display
input [9:0] SW;
output [7:0] HEX0;
output [7:0] HEX1;

wire Z;
wire [3:0] A;
wire [3:0] D;

CmpGreat9 U1(.bin(SW[3:0]), .Z(Z));
CircuitA  U2(.bin(SW[3:0]), .A(A));
mux2to1_4 U3(.In0(SW[3:0]), .In1(A), .Sel(Z), .Out(D));
SevenSeg  U4(.bin(D),.a(HEX0[0]),.b(HEX0[1]),.c(HEX0[2]),.d(HEX0[3]),.e(HEX0[4]),.f(HEX0[5]),.g(HEX0[6]));
SevenSeg  U5(.bin(Z),.a(HEX1[0]),.b(HEX1[1]),.c(HEX1[2]),.d(HEX1[3]),.e(HEX1[4]),.f(HEX1[5]),.g(HEX1[6]));

endmodule