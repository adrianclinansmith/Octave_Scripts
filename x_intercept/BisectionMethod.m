% Bisection Method

syms x;
f(x) = (1/6)*(x-1) + x/6 - (1/3)*(x-4) - x/3 - (1/2)*x^(-1/2);

a = a0 = 1;
b = b0 = 4;

if (f(a)*f(b) > 0)
  fprintf('Cannot use Bisection Method, f(a) & f(b) are the same sign\n');
  return;
end


MAX_ITR = 100;
itr = 0;

while (itr < MAX_ITR)  % abort if the root can't be found after so many iterations
  
  c = (a+b)/2;
  fc = double(f(c));
  fb = double(f(b));
  
  if (abs(fc) < 10^-6)  % f(c) is close or equal to the root 
    break;
  elseif (fc*fb < 0)  % f(c) and f(b) are opposite signs 
    a = c;
  else                  % f(c) and f(a) are opposite signs
    b = c;
  end
  
  itr = itr+1;
  
  %fprintf('(%.15f, %.15f)\n', c, fc);
  %fprintf('[%.15f, %.15f]\n', a, b);
  
end

fprintf('\nitr = %d\n', itr);
fprintf('Root: (%.15f, %.15f)\n', c, fc);
fprintf('error <= %g\n', abs(a0-b0)/2^(itr+1));

