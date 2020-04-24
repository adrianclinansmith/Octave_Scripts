################################
# Riemann Sum: uniform partition
################################

syms x f(x);
f(x) = 2/pi^(.5)*exp(1)^(-x^2); # integrand

a = 0;       # left endpoint
b = 2;       # right endpoint
n = 4;       # number of rectangles
h = (b-a)/n; # rectangle width 

left = 0;   # left evaluation
right = 0;  # right evaluation
centre = 0; # centre evaluation
    
for i = 1:n
  
  xi = a + (i-1)*h;
  left = double( left + f(xi)*h );
  
  xi = a + i*h;
  right = double( right + f(xi)*h );
  
  xi = a + (2*i-1)*h/2;
  centre = double( centre + f(xi)*h );
  
end

fprintf('left = %f\n', left);
fprintf('right = %f\n', right);
fprintf('centre = %f\n', centre);



