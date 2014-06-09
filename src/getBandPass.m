function frecuency = getBandPass(N, f0,fs)
	frecuency = [];
	for i=1:N
		frecuency(i) = (2/N)*cos((2*pi*f0*i)/fs);
	end
end