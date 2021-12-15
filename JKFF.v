module JKFF(Q, Qbar, J, K, CLR, CLK);
	output Q, Qbar;
	input J, K, CLR, CLK;
	
	wire a, b, y, ybar, CLKbar, c, cbar;
	
	nand n01(a, J, Qbar, CLR, CLK);
	nand n02(b, K, Q, CLK);
	nand n11(y, a, ybar);
	nand n12(ybar, b, CLR, y);
	not n(CLKbar, CLK);
	nand n21(c, y, CLKbar);
	nand n22(cbar, ybar, CLKbar);
	nand n31(Q, c, Qbar);
	nand n32(Qbar, CLR, Q, cbar);
endmodule
