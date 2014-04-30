function Z = calculateMatrix(column)
	f1 = 1/365.25;
	for i=1:size(column)(1)
		t = column(i,3)*column(i,2)*(column(i,1)-60);
		Z(i,1) = 1;
		Z(i,2) = cos(2*pi*f1*t);
		Z(i,3) = sin(2*pi*f1*t);
		Z(i,4) = column(i,4);
	end
	Z
end

