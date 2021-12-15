module half_subtractor(A, B, diff, borrow);

input A, B;
output diff, borrow;

xor(diff, A, B);

