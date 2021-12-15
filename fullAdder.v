module FullAdder(S, Cout, A, B, Cin);

	input A, B, Cin;
	output S, Cout;

	HalfAdder ha1(S1, C1, A, B);
	HalfAdder ha2(S, C2, S1, Cin);
	or or1(Cout, C1, C2);

endmodule
