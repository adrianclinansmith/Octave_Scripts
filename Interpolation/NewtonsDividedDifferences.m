%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Newton's Divided Differences
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% F[x_i, x_i+k] = ( F[x_i+1, x_i+k] - F[x_i, x_i+k-1] ) / ( x_i+k - x_i )

x = [1 2 4 7];
y = [0 2 -2 -1];
num = numel(x);

for i = 1:num
  
  DD(i,i) = y(i); 
  
end

for k = 1:(num-1)
  
  for i = 1:(num-k)
    
    DD(i,i+k) = ( DD(i+1,i+k) - DD(i,i+k-1) ) / ( x(i+k) - x(i) );
    
  end
  
end

syms t P(t) L(t);
P(t) = DD(1,1);
L(t) = 1;

for k = 2:num 
  
  L(t) = L(t)*( t - x(k-1) );
  P(t) = P(t) + DD(1,k)*L(t);
  
end

P(t)




