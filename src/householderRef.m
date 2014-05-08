function H_u = householderRef(v,k)
	u=v;
	u(k)=u(k)+sign(v(k))*norm(v);
	u_norm=u/norm(u);
	H_u=eye(rows(v))-2*u_norm*u_norm';
end