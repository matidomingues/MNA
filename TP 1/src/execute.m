function ans = execute(data,f)
    ans = struct ();
    column = data(:,1:3);
    
    
	for i=4:size(data(1,:),2);
        %para cada estacion armo una matriz con año, mes, día, velocidad media
		column(:,4) = data(:,i);
        %calculo y guardo en A las constantes en función del tiempo que
        %multiplican a A0, A1, B1
		[A, y] = calculateMatrix(column);
        
        %si se eligió metodo QR
        if f == 0
             [Q,R] = solveQRGS(A);
            
             
             X(i-3, :) = fSubstitution(R,Q'*y);
             
             [k,m] = histogram(y,A,X(i-3, :));
             ans.(char('@' + i)).x = k;
             ans.(char('@' + i)).m = m;
        
        %si se eligió metodo Cholesky
        elseif f == 1
            B = A' * A;
            G = cholesky(B);

            p = fSubstitution(G,A'* y);            
            X(i-3, :) = fSubstitution(G,p);
            
            
            [k,m] = histogram(y,A,X(i-3, :));
            ans.(char('@' + i)).x = k;
            ans.(char('@' + i)).m = m;
        
        %si se eligió el metodo de Matlab
        else
            X(i-3, :) = A\y;
             [k,m] = histogram(y,A,X(i-3, :));
             ans.(char('@' + i)).x = k;
             ans.(char('@' + i)).m = m;
             
              
        end
        %calculo el error absoluto obtenido
        err(i)=calculateError(A,X(i-3, :),y);
         
       
    end
    
    err = err(:,4:end)';
    disp('err');
    disp(err);
    ans.X = X;
    disp('x');
    disp(X);

    
    
end