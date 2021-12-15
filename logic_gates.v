module logic_gates(A, B, Y1, Y2, Y3, Y4, Y5, Y6, Y7);

input A, B;

output Y1, Y2, Y3, Y4, Y5, Y6, Y7;

or(Y1, A, B);
and(Y2, A, B);
not(Y3, A);
nand(Y4, A, B);
nor(Y5, A, B);
xor(Y6, A, B);
xnor(Y7, A, B);

endmodule