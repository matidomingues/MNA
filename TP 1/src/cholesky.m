function chol = cholesky( matrix )


n = size(matrix,2);
chol = zeros(n);

for i=1:n
   chol(i, i) = sqrt(matrix(i, i) - chol(i, :)*chol(i, :)');
   for j=(i + 1):n
      chol(j, i) = (matrix(j, i) - chol(i,:)*chol(j ,:)')/chol(i, i);
   end
end

end

