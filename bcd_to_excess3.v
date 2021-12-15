module bcd_to_excess3(B, E);

	input [3:0]B;
	output [3:0]E;

	not z(E[0], B[0]); //D not
	not not1(C, B[1]); // C not
	not not2(A, B[2]); // B not

	and and1(Y1, B[1], B[0]); // CD
	and and2(Y2, E[0], C);   // Cnot Dnot
	or y(E[1], Y1, Y2); // Y

	and and3(X1, A, B[1]); //Bnot C
	and and4(X2, A, B[0]); //Bnot D
	and and5(X3, B[2], Y2); //B Cnot Dnot
	or or1(S1, X1, X2);
	or x(E[2], S1, X3); // X

	and and6(W1, B[1], B[2]); // BC
	and and7(W2, B[2], B[0]); //BD
	or or2(S2, W1, W2);
	or w(E[3], S2, B[3]);
	
endmodule
	
