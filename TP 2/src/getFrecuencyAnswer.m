function frecuencyAnswer = getFrecuencyAnswer(func, fs)
	vector= 0:pi/256:pi;
	frec = (vector*fs/(2*pi));
	frecuencyAnswer = freqz(func, 1, vector);
	plot(frec, abs(frecuencyAnswer));
	loc = frecuencyAnswer >= (1/sqrt(2));
	before = false;
	band = 0;
	for i=1:length(frecuencyAnswer)
		if(loc(i) == 1 && before == false)
			band = frec(i);
			before = true;
		elseif(before == true && loc(i) == 0)
			before = false;
			band = abs(band-frec(i-1));
		endif
	end
	band
end	