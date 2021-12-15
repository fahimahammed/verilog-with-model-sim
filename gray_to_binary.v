module gray_to_binary(G, B);

	input [3:0]G;
	output [3:0]B;

	assign B[3] = G[3];
	xor xor1(B[2], G[3], G[2]);
	xor xor2(B[1], B[2], G[1]);
	xor xor3(B[0], B[1], G[0]);

endmodule
