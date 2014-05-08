function [A, y] = calculateMatrix(column)
	f1 = 1/365.25;
	for i=1:size(column,1)
		t = column(i,3)*column(i,2)*(column(i,1)-60);
		A(i,1) = 1;
		A(i,2) = cos(2*pi*f1*t);
		A(i,3) = sin(2*pi*f1*t);
		y(i,1) = column(i,4);
	end
end

