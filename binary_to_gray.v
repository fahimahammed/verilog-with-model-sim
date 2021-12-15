module binary_to_gray(B, G);

	input [3:0]B;
	output [3:0]G;

	assign G[3] = B[3];
	xor xor1(G[2], B[3], B[2]);
	xor xor2(G[1], B[2], B[1]);
	xor xor3(G[0], B[1], B[0]);

endmodule