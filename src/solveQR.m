function [Q,R] = solveQR(A)
	m=rows(A);
	n=columns(A); 
	R_accum=A; 
	Q_accum=eye(m); 
	for i=1:n-1
		H=eye(m); 
		H(i:m,i:m)=householderRef(R_accum(i:m,i),1);
		Q_accum=Q_accum*H'; 
		R_accum=H*R_accum;
	end 
	R=R_accum; 
	Q=Q_accum;
end