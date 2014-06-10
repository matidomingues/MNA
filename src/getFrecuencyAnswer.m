function frecuencyAnswer = getFrecuencyAnswer(func, fs)
	vector= 0:pi/256:pi;
	frec = (vector/(2*pi))*fs;
	frecuencyAnswer = freqz(func, 1, vector);
	plot(frec, frecuencyAnswer);
end