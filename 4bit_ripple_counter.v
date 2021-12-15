module ripple_counter(Q, CLK, CLR);

	output [3:0]Q;
	input CLK, CLR;

	//assign Q = 4'b0000;
	
	wire [3:0]Qbar;
	wire J, K;

	assign J = 1;
	assign K = 1;
	
	JKFF jk0(Q[0], Qbar[0], J, K, CLR, CLK);
	JKFF jk1(Q[1], Qbar[1], J, K, CLR, Q[0]);
	JKFF jk2(Q[2], Qbar[2], J, K, CLR, Q[1]);
	JKFF jk3(Q[3], Qbar[3], J, K, CLR, Q[2]);
endmodule
