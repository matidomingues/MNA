function H_u = householderRef(v,k)
	u=zeros(rows(v),1); 
	s=sign(v(k))*norm(v); 
	for i=1:rows(v)
		if(i==k)
			u(i)=v(i)+s;
		else
			u(i)=v(i);
		endif 
	end
	H_u = eye(rows(v))-((2*u*u')/(norm(u)^2)); 
end