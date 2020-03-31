% Newton's Method

syms x;
f(x) = (1/6)*(x-1) + x/6 - (1/3)*(x-4) - x/3 - (1/2)*x^(-1/2);
g(x) = diff( f(x) );

a =4;

for i = 1:50
  
  a = double( -f(a)/g(a) + a );
  
  if (abs(f(a)) < 10^(-6))
    break;
  end
  
end

fprintf('(a, f(a)) = (%g, %g)\n', a, double(f(a)));

