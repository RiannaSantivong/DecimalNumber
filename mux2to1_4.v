module mux2to1_4(In0, In1, Sel, Out);
input  [3:0] In0;
input  [3:0] In1;
input        Sel;
output [3:0] Out;

mux2to1_1 U1(.In0(In0[0]), .In1(In1[0]), .Sel(Sel), .Out(Out[0]));
mux2to1_1 U2(.In0(In0[1]), .In1(In1[1]), .Sel(Sel), .Out(Out[1]));
mux2to1_1 U3(.In0(In0[2]), .In1(In1[2]), .Sel(Sel), .Out(Out[2]));
mux2to1_1 U4(.In0(In0[3]), .In1(In1[3]), .Sel(Sel), .Out(Out[3]));


endmodule