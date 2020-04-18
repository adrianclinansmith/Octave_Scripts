#####################
# Gradient Descent 1D
#####################

syms x f(x);
f(x) = x^3/(5 + x^4); # objective function to find a local maximum
g(x) = diff(f);       # derivative of objective function

p = 0.1; # initial guess
h = 1;   # initial stepsize 

q = p+1; # initialize for while condition

while (h > 0.1 || p != q)

  if (g(p) > 0)
    q = p + h;
  else
    q = p - h;
  end
  
  if (f(q) > f(p))
    p = q;
  else 
    h = h/2;
  end
  
end

fprintf('x = %f\n', p);
fprintf('h = %f\n', h);
