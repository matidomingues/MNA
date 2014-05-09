function err = calculateError(A, b, y) 
	err=norm(A*b'-y)^2;
end
