module CmpGreat9(bin, Z);
input [3:0] bin; // four bit input b0 b1 b2 b3 
output        Z;

wire w;

or  U1(w, bin[1], bin[2]);
and U2(Z, w, bin[3]);

endmodule