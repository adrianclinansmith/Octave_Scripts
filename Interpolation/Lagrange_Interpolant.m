% Lagrange Interpolant

x = [2 3 5 7];
y = [2 -1 10 0];
num = numel(y);

syms t P(t) L(t);
P(t) = 0;

for i = 1:num 
  
  L(t) = 1;
  
  for j = 1:num
    
    if (j != i)
      L(t) = L(t)*( t - x(j) )/( x(i) - x(j) );
    end
    
  end
  
  P(t) = P(t) + y(i)*L(t);
  
end

P(t)