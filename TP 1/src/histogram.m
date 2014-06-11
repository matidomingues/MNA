function [nn,xx] = histogram(y,A,b)
   	[nn,xx]=hist(abs(y-A*b'));
end