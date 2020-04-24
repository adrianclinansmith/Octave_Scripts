###################################
# Simpson's Rule: uniform partition
###################################

syms x f(x);
f(x) = atan(x); # integrand

a = 0;           # left endpoint
b = 1;           # right endpoint
n = 5;           # number of nodes (must be odd > 1)
h = (b-a)/(n-1); # width of subinterval

ans = 0;

for i = 1:n
  
  xi = a + (i-1)*h;
  
  if (i == 1 || i == n)
    ans = double( ans + f(xi) );
  elseif (rem(i,2) == 0)
    ans = double( ans + 4*f(xi) );
  else 
    ans = double( ans + 2*f(xi) );
  end
  
end

display(h*ans/3);