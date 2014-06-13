function frecuency = getBandPass(N, f0,fs)
	n=0:N-1;
	frecuency = (2/N)*cos((2*pi*f0*n)/fs);
end