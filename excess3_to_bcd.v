module excess3_to_bcd(B, E);

	input [3:0]E;
	output [3:0]B;

	nand nand1(p1, E[0], E[1]);
	not not0(q1, E[2]);
	and and1(a1, p1, q1);
	xor xor1(B[3], a1, E[3]);

	xor xor2(B[2], p1, E[2]);

	xor xor3(B[1], E[1], E[0]);
	
	not not3(B[0], E[0]);

endmodule
