function X = execute(data,f)
    column = data(:,1:3);
	for i=4:size(data(1,:),2);
		column(:,4) = data(:,i);
		[A, y] = calculateMatrix(column);
        if f == 0
            [Q,R] = solveQRGS(A);
            X(i, :) = inv(R) * Q' * y;
        elseif f == 1
            B = A' * A;
            G = cholesky(B);
            z0 = inv(G) * A' * y;
            x0 = inv(G') * z0;
            X(i, :) = x0;
        else
            X(i, :) = A\y;
            %Este metodo es el super optimo de matlab
        end
	end
end