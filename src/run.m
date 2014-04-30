function A = run(data)
	for i=4:size(data(1,:))(2)
		column = data(:,1:3);
		column(:,4) = data(:,i);
		variables = calculateMatrix(column);
		[q,r] = qr(variables(:,1:3));
		y= variables(:,4);
		results = (q'*y)(1:3);
		A3 = results(3)/r(3,3);
		A2 = (results(2)-r(2,3)*A3)/r(2,2);
		A1 = (results(1) - r(1,2)*A2 - r(1,3)*A3)/r(1,1);
		A(i,:) = [A1,A2,A3]; 
	end
	A
end