function [Q,R] = solveQR(A)
        [m,n]=size(A);

        R=A;
        Q=eye(m);

        for i=1:n
            H = eye(m);
            H(i:end,i:end)=householderRef(R(i:end,i),1);
            Q(:,i:end)=Q*H'(:,i:end);
            R(i:end,:)=H(i:end,:)*R;
        end
end
