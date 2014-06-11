function plotHistogram(station, name)
	
	values = station.x
	bins = [0, station.m];
	b = bar(bins(1:end-1), values, 'histc');
	set(gca, 'XTick', bins);
	set(gca, 'XTickLabel', bins);
	set(b, 'FaceColor', [0.9, 0.5, 0], 'EdgeColor', [0.5, 0.5, 1]);
	xlabel('Error Bins');
	ylabel('Hits');
	saveas(b, strcat('../docs/Histogram_', name, '.png'), 'png');
end