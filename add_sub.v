module add_sub(A, B, M, sum, Cout);

	input [3:0]A, B;
	input M;
	output [3:0]sum;
	output Cout;

	wire [3:0]X;
	xor xor1(X[0], M, B[0]);
	xor xor2(X[1], M, B[1]);
	xor xor3(X[2], M, B[2]);
	xor xor4(X[3], M, B[3]);

	fullAdder fa1(sum[0], C1, A[0], X[0], M);
	fullAdder fa2(sum[1], C2, A[1], X[1], C1);
	fullAdder fa3(sum[2], C3, A[2], X[2], C2);
	fullAdder fa4(sum[3], Cout, A[3], X[3], C3);

endmodule

