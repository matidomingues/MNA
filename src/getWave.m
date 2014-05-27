function tone = getWave(number)
	bps = 16;       % bits per sample
	sps = 8000;     % sample rate [samples/s]
	nsecs = 0.25;      % number of seconds of the audio file
	betweentones=0.05;

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
				tone = [tone; nosound; wave1];
			case "2"
				tone = [tone; nosound; wave2];
			case "3"
				tone = [tone; nosound; wave3];
			case "4"
				tone = [tone; nosound; wave4];
			case "5"
				tone = [tone; nosound; wave5];
			case "6"
				tone = [tone; nosound; wave6];
			case "7"
				tone = [tone; nosound; wave7];
			case "8"
				tone = [tone; nosound; wave8];
			case "9"
				tone = [tone; nosound; wave9];
			otherwise
				"noise"
		endswitch
	endfor
end