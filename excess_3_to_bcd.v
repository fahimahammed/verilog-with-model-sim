module excess_3_to_bcd(E, B);

	input [3:0]E;
	output [3:0]B;

	not not1(B[0], E[0]);

	xor xor1(B[1], E[1], E[0]);
	
	nand nand1(n1, E[0], E[1]);
	xor xor2(B[2], n1, E[2]);

	not not2(n2, E[2]);
	and and1(a1, n2, n1);
	xor xor3(B[3], a1, E[3]);

endmodule  
