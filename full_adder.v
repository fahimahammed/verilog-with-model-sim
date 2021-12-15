module full_adder(S, C, A, B, X);

	input A, B, X;
	output S, C;

	wire S1, C1, C2;

	half_adder hf1(S1, C1,  A, B);
	half_adder hf2(S, C2, S1, X);

	or G1(C, C1, C2);

endmodule
