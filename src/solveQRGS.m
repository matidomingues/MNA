function [Q, R] = solveQRGS(A)
	Q = [];
	for i = 1:size(A, 2)
		 v = A(:, i);
		 for j = 1:(i-1)
		 	v = v - (v' * Q(:, j)) * Q(:, j);
		 end
		 Q(:, i) = v ./ norm(v);
	end
	R = Q' * A;
end