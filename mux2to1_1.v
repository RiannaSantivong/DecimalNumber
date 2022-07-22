module mux2to1_1 (In0, In1, Sel, Out); // 2 to one (In0 + (In1 + Sel))
input In0, In1, Sel;
output Out;

wire nSel, A, B;

// Using gate-Level modeling

	not U1(nSel, Sel); // format: gate gateName(output, input)
	and U2(A, In0, nSel); // nSel (not Sel)
	and U3(B, In1, Sel);
	or  U4(Out, A, B);

endmodule