function numbers = getNumbersFrequencies(frequencies, samples, minSeparation, threshold)

	numbers = [];
	currentNumber = zeros(1,samples);
	sampleCount = 0;
	silenceCount = 0;
	for i = 1:size(frequencies)
		if(abs(frequencies(i)) > threshold)
			if(sampleCount < samples)
				sampleCount = sampleCount + 1;
				currentNumber(1,sampleCount) = frequencies(i);
			end
			silenceCount = 0;
		else
			if(sampleCount < samples && sampleCount > 0)
				sampleCount = sampleCount + 1;
				currentNumber(1,sampleCount) = frequencies(i);
			end
			if(sampleCount > 0)
				silenceCount = silenceCount + 1;
			end
		end
		if (silenceCount == minSeparation)
			if(sampleCount < samples)
				disp(['Text', num2str(i)]);
				error('Samples required for the numbers lower than a number''s sample');
				numbers = [];
				return;
			end
			numbers = [numbers; currentNumber];
			currentNumber = zeros(1, samples);
			silenceCount = 0;
			sampleCount = 0;
		end
	end
	if(sampleCount == samples)
		numbers = [numbers; currentNumber];
	end
end