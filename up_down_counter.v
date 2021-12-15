module updowncounter(Q, MOD, CLK, CLR);
	output [2:0]Q;
	input MOD, CLK, CLR;
	wire J, K, MODbar, a, b, c, d, e;
	wire [2:0]Qbar;
	assign J = 1;
	assign K = 1;
	
	JKFF jk0(Q[0], Qbar[0], J, K, CLR, CLK);
	and an0(a, MOD, Q[0]);
	not nt0(MODbar, MOD);
	and an1(b, Qbar[0], MODbar);
	or or0(c, a, b);
	JKFF jk1(Q[1], Qbar[1], c, c, CLR, CLK);
	and an2(c, Q[1], a);
	and an3(d, Qbar[1], b);
	or or1(e, c, d);
	JKFF jk2(Q[2], Qbar[2], e, e, CLR, CLK);
endmodule
