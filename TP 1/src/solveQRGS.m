function [Q, R] = solveQRGS(A)
	R = zeros(size(A,2),size(A,2));
    Q = zeros(size(A));
	for i = 1:size(A, 2)
		 v = A(:, i);
		 for j = 1:(i-1)
            R(j,i) = Q(:, j)'*A(:,i);
		 	v = v - R(j,i) * Q(:, j);
         end
         R(i, i) = norm(v);
		 Q(:, i) = v / R(i,i);         
	end
	
end