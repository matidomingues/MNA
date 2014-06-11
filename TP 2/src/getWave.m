function tone = getWave(number)
	bps = 16;       % bits per sample
	sps = 8000;     % sample rate [samples/s]
	nsecs = 0.5;      % number of seconds of the audio file
	betweentones=0.00;

	tone = [];

	nsamples = sps*nsecs;

	time = linspace(0, nsecs, nsamples);
	timebetween = linspace(0,betweentones,nsamples);

	nosound = (timebetween*0)';
	wave0 = sin(time*2*pi*1336)'+sin(time*2*pi*941)';
	wave1 = sin(time*2*pi*1209)'+sin(time*2*pi*697)';
	wave2 = sin(time*2*pi*1336)'+sin(time*2*pi*697)';
	wave3 = sin(time*2*pi*1477)'+sin(time*2*pi*697)';
	wave4 = sin(time*2*pi*1209)'+sin(time*2*pi*770)';
	wave5 = sin(time*2*pi*1336)'+sin(time*2*pi*770)';
	wave6 = sin(time*2*pi*1477)'+sin(time*2*pi*770)';
	wave7 = sin(time*2*pi*1209)'+sin(time*2*pi*852)';
	wave8 = sin(time*2*pi*1336)'+sin(time*2*pi*852)';
	wave9 = sin(time*2*pi*1477)'+sin(time*2*pi*852)';
	for i = 1:size(number)(2)
		switch (number(i))
			case "1"
				tone = [tone; wave1; nosound];
			case "2"
				tone = [tone; wave2; nosound];
			case "3"
				tone = [tone; wave3; nosound];
			case "4"
				tone = [tone; wave4; nosound];
			case "5"
				tone = [tone; wave5; nosound];
			case "6"
				tone = [tone; wave6; nosound];
			case "7"
				tone = [tone; wave7; nosound];
			case "8"
				tone = [tone; wave8; nosound];
			case "9"
				tone = [tone; wave9; nosound];
			otherwise
				"noise"
		endswitch
	endfor
end