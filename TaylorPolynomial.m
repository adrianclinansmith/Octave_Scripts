%{
Taylor Polynomial of function f about a of degree N.

usage: f = TaylorPolynomial(@sin, 0, 4)
       f(0.2)
%}

function tp = TaylorPolynomial(f, a, N)
  
  syms x;
  
  tp = @(x) f(a); 
  d(x) = diff(f(x));
  
  for n = 1:1:N
    tp = @(x) tp(x) + d(a)/factorial(n)*(x-a)^n;
    d(x) = diff(d(x));
  end  

  
end



%{

clear -a; % clear all
fprintf('\n\n\n');

syms x
f(x) = atan(x);
a = 0;
N = 7;

poly(x) = f(a);
d(x) = f(x);

for n = 1:1:N
  d(x) = diff(d(x));
  poly(x) = poly(x) + d(a)/factorial(n) * (x-a)^n;
end

poly(x)

%}
