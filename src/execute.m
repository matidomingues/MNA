function ans = execute(data,f)
    ans = struct ();
    column = data(:,1:3);
	for i=4:size(data(1,:),2);
		column(:,4) = data(:,i);
		[A, y] = calculateMatrix(column);
        if f == 0
            [Q,R] = solveQRGS(A);
            X(i-3, :) = inv(R) * Q' * y;
        elseif f == 1
            B = A' * A;
            G = cholesky(B);
            z0 = inv(G) * A' * y;
            x0 = inv(G') * z0;
            X(i-3, :) = x0;
        else
            X(i-3, :) = A\y;
            %Este metodo es el super optimo de matlab
        end
        err(i)=calculateError(A,X(i-3, :),y);
        ans.(char('@' + i)) = histogram(X(i-3, :),y);
    end
    err = err(:,4:end);
    ans.err = err;
    ans.X = X;
    
end