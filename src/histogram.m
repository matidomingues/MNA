function [nn,xx] = histogram(vars,y)
    
    n = size(vars,1);
    vels = getVelocity( vars );
    error=zeros(n,1);
    
    for i=1:n    
        
        error(i)=norm(y(i)-vels(i))^2;
        disp(error(i));
    end
    
    [nn,xx]=hist(error);
end