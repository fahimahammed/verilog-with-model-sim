module AdderSubtractor(A, B, M, S, C);

	input [3:0]A, B;
	input M;
	output [3:0]S;
	output C;

	wire [3:0]X;
	
	xor(X[0], B[0], M);
	xor(X[1], B[1], M);
	xor(X[2], B[2], M);
	xor(X[3], B[3], M);

	FullAdder fa1(S[0], C1, A[0], X[0], M);
	FullAdder fa2(S[1], C2, A[1], X[1], C1);
	FullAdder fa3(S[2], C3, A[2], X[2], C2);
	FullAdder fa4(S[3], C, A[3], X[3], C3);

endmodule
	
