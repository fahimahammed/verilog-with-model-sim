module bcd_to_excess_3(B, E);

	input [3:0]B;
	output [3:0]E;

	not not1(E[0], B[0]);

	xor xor1(x, B[0], B[1]);

	not not2(E[1], x);

	or or1(s1, B[1], B[0]);
	xor xor2(E[2], s1, B[2]);

	and and1(m1, s1, B[2]);
	or or2(E[3], m1, B[3]);

endmodule	

