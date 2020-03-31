%{
Estimate the square root of c with initial guess x and iter iterations.
%}
function y = sqrtc(x, c, iter)
  for i = 1:iter 
    x = 0.5*(x+c/x);
  end
  y = x;
end
  