function vel = getVelocity( vars )
	f1 = 1/365.25;
    vel = [];
	for i=1:size(vars,1)
        a=vars(i,1);
        b=vars(i,2);
        c=vars(i,3);
		vel(i) = a + b * cos(2*pi*f1*i)+ c * sin(2*pi*f1*i);
    end
    vel = vel';
end
