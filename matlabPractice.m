clear -a;
format long;
clc;

a = 2; b = 3; c = -4; d = 5;

syms x;
f(x) = a + b*x + c*x^2 + d*x^3;   % regualr 
g(x) = a + x*(b + x*(c + x*(d))); % Horner's

C = [2 3 -4 5]; # Coefficients
n = 4;

h(x) = C(n)+x*0;

for i = n-1:-1:1
   h(x) = C(i) + x*(h(x));
end

display(f)
f(282)
display(g)
f(282)
display(h)
f(282)

% 1028785

syms n;

term(x, n) = factorial(x)

p(x) = 1 + 0*x + x^2 + 8*x^3/factorial(3) + + 7*x^4/factorial(3)







