% function A = exec(data,func)
% 	for i=4:size(data(1,:),2);
% 		column = data(:,1:3);
% 		column(:,4) = data(:,i);
% 		variables = calculateMatrix(column);
% 		if func == 0
%             [q,r] = qr(variables(:,1:3));
%         else 
%             b = variables(:,1:3);
%             matrix = b'*b;
%             [q,r] = cholesky(matrix);
%         end
% 		y= variables(:,4);
% 		results = (q'*y);
%         results = results(1:3);
% 		A3 = results(3)/r(3,3);
% 		A2 = (results(2)-r(2,3)*A3)/r(2,2);
% 		A1 = (results(1) - r(1,2)*A2 - r(1,3)*A3)/r(1,1);
% 		A(i,:) = [A1,A2,A3]; 
% 	end
% 	A
% end

function A = exec(data,f)
	for i=4:size(data(1,:),2);
		column = data(:,1:3);
		column(:,4) = data(:,i);
		variables = calculateMatrix(column);
        if f == 0
            [q,r] = qr(variables(:,1:3));
            y= variables(:,4);
            results = (q'*y);
            results= results(1:3);
            A3 = results(3)/r(3,3);
            A2 = (results(2)-r(2,3)*A3)/r(2,2);
            A1 = (results(1) - r(1,2)*A2 - r(1,3)*A3)/r(1,1);
            A(i,:) = [A1,A2,A3]; 
        else

% 1. Formense las matrices A'A y A'b
% 2. Calculese la factorizacion de Cholesky de A?A ? LL?
% 3. Resuelvase Ly ? A'b
% 4. Resuelvase L'x ? y

            a = variables(:,1:3);
            matrix = a'*a;
            L = cholesky(matrix);
            % to be continued
        end
            
		
	end
	A
end