function plotAll(errStruct)

	fields = fieldnames(errStruct);
	for fn=fields'
		if (size(fn, 2) < 2) && ((fn{1}(1) - 0) < 81) %&& ((fn{1}(1) - 0) ~= 68)
			plotHistogram(errorStruct.(fn{1}), strcat('Histogram_', fn{1})); 
		end
	end
end