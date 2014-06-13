function frecuencies = calculateFrecuencies(call)
	f = cell(4,3);
	w = [];
	N=64;
	fs=8000;
	means = zeros(2);
	meansloc = zeros(2);

	f(1,1) = 1;
	f(1,2) = 2;
	f(1,3) = 3;
	f(2,1) = 4;
	f(2,2) = 5;
	f(2,3) = 6;
	f(3,1) = 7;
	f(3,2) = 8;
	f(3,3) = 9;

	w(1) = mean(filter(getBandPass(64, 697, 8000), 1, call).^2);
	w(2) = mean(filter(getBandPass(64, 770, 8000), 1, call).^2);
	w(3) = mean(filter(getBandPass(64, 852, 8000), 1, call).^2);
	w(4) = mean(filter(getBandPass(64, 941, 8000), 1, call).^2);
	w(5) = mean(filter(getBandPass(64, 1209, 8000), 1, call).^2);
	w(6) = mean(filter(getBandPass(64, 1336, 8000), 1, call).^2);
	w(7) = mean(filter(getBandPass(64, 1477, 8000), 1, call).^2);

	for i = 1:7
		num = w(i);
		if (means(1) <= num)
			means(2) = means(1);
			meansloc(2) = meansloc(1);
			means(1) = num;
			meansloc(1) = i;
		elseif (means(2) < num)
			means(2) = num;
			meansloc(2) = i;
		endif
	end

	if(meansloc(1) > 4)
		meansloc(1) -= 4;
	elseo
		meansloc(2) -= 4;
	endif
	frecuencies = f(meansloc(1), meansloc(2));
end