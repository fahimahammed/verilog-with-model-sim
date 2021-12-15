module adder_subtractor(A, B, M, sum, cout);

	input [3:0]A,B;
	input M;
	output cout;
	output [3:0]sum;
	
	wire [3:0]B2;
	xor (B2[0], B[0], M);
	xor (B2[1], B[1], M);
	xor (B2[2], B[2], M);
	xor (B2[3], B[3], M);

	full_adder fa1(sum[0], C0, A[0], B2[0], M);
	full_adder fa2(sum[1], C1, A[1], B2[1], C0);
	full_adder fa3(sum[2], C2, A[2], B2[2], C1);
	full_adder fa4(sum[3], cout, A[3], B2[3], C2);

endmodule