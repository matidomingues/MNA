function x = fSubstitution(L,d)
   n = size(d);
   x=zeros(n);
    for j=1:n
        x(j)=d(j)/L(j,j);
        d(j+1:n)=d(j+1:n)-L(j+1:n,j)*x(j);
    end 

end