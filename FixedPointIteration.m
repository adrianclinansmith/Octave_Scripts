% Fixed Point Iteration

% [text, id] = lastwarn() ... get last warning
% warning('off', id)      ... turn off warning
warning('off', 'OctSymPy:sym:rationalapprox');

syms x;
f(x) = exp(1/x);
g(x) = diff(f(x));

curr_p = 1;
curr_dist = 10^6;
max = 20;

for i = 1:max
  
    last_p = curr_p;
    curr_p = double( f(curr_p) );
    
    last_dist = curr_dist;
    curr_dist = abs(curr_p - last_p);
    
    if (curr_dist > last_dist)
      break;
    elseif (curr_dist < 10^(-1))
      % Newton's method here
    end
    
end

slope = double( g(curr_p) ); 

if (i < max)
  fprintf('The estimates diverged\n');
else
  fprintf('Fixed point estimate is %g with slope %g\n', curr_p, slope);
end





