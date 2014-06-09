function frecuencyAnswer = getFrecuencyAnswer(func, fs)
	vector= 0:pi/256:pi;
	frecuencyAnswer = freqz(func, vector);
end