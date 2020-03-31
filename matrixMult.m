%{
Return the product of matrix M and matrix N.
M's row length must equal N's column length.
%}
function C = matrixMult(M, N)
  
  M_rows = size(M,1);
  M_cols = size(M,2);
  N_rows = size(N,1);
  N_cols = size(N,2);
  
  if (M_cols ~= N_rows)
    error('The matrices cannot be multiplied')
  end
  
  C = zeros(M_rows, N_cols);
  
  for i = 1:M_rows 
    for j = 1:N_cols
      C(i,j) = dot(M(i,:), N(:,j));
    end
  end

end