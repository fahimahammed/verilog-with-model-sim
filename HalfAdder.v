module HalfAdder(S, C, A, B);

	input A, B;
	output S, C;

	xor xor1(S, A, B);
	and and1(C, A, B);

endmodule
