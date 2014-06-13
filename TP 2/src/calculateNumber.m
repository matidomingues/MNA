function numbers = calculateNumber(call)
	[x,fs,nbits]= wavread(call);
	minSample = 200; %Minima muestra para tomar de cada numero
	minSilenceSeparation = 200; %Minima muestra 
	threshold = 0.7;

	numbersFreq = getNumbersFrequencies(x, minSample, minSilenceSeparation, threshold);
	for i = 1:size(numbersFreq, 1)
		numbers(i) = calculateFrecuencies(numbersFreq(i, :)');
	end
	return
end