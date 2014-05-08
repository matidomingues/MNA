function [Q,R] = solveQRCholesky(A)
	B = A' * A;
	G = cholesky(B);
	R = G';
	Q = A * inv(R);
end