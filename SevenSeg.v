module SevenSeg(bin,a,b,c,d,e,f,g);
input  [3:0] bin;
output a,b,c,d,e,f,g;

wire [7:0] seg;

assign {g,f,e,d,c,b,a} = seg; // a is bit1, g is bit6

assign seg = (bin == 4'd0)? ~7'b0111111:
			    (bin == 4'd1)? ~7'b0000110:
			    (bin == 4'd2)? ~7'b1011011:
			    (bin == 4'd3)? ~7'b1001111:
			    (bin == 4'd4)? ~7'b1100110:
			    (bin == 4'd5)? ~7'b1101101:
			    (bin == 4'd6)? ~7'b1111101:
			    (bin == 4'd7)? ~7'b0000111:
			    (bin == 4'd8)? ~7'b1111111:
			    (bin == 4'd9)? ~7'b1101111:
			    (bin == 4'ha)? ~7'b1111011:
			    (bin == 4'hb)? ~7'b1111000:
			    (bin == 4'hc)? ~7'b0111010:
			    (bin == 4'hd)? ~7'b1011110:
			    (bin == 4'he)? ~7'b1111001:
									 ~7'b1110001;

endmodule