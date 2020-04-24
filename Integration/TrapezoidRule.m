################
# Trapezoid Rule
################

syms x f(x);
f(x) = sqrt(1 + sqrt(x)); # integrand

a = 0;       # left endpoint
b = 100;     # right endpoint
n = 4;       # number of trapezoids
h = (b-a)/n; # width of trapezoid

ans = 0;

for i = 1:n+1
  
  xi = a + (i-1)*h;
  
  if (i == 1 || i == n+1)
    ans = double( ans + h*f(xi)/2 );
  else 
    ans = double( ans + h*f(xi) );
  end
  
end

display(ans);