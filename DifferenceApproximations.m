% Difference approximations for a function

syms x;
f(x) = x^(1/3);

a = 8    % initial value
h = 0.5; % step size 

FDA = double( (f(a+h)-f(a))/h );
BDA = double( (f(a)-f(a-h))/h );
CDA = double( (f(a+h)-f(a-h))/(2*h) );

SDA = double( (f(a+h)+f(a-h)-2*f(a))/(h^2) );

fprintf('Forward Difference Approximation of f at %g with stepsize %g is %g\n', a, h, FDA);
fprintf('Backward Difference Approximation of f at %g with stepsize %g is %g\n', a, h, BDA);
fprintf('Centered Difference Approximation of f at %g with stepsize %g is %g\n', a, h, CDA);
fprintf('Second Difference Approximation of f at %g with stepsize %g is %g\n\n', a, h, SDA);

% Difference approximations for a set of data points

t = [0 0.1 0.2]; % input values
y = [4 3 6];     % output values

for (i = 1:numel(t))
  
  if (i == 1)
    DA(i) = double( (y(2)-y(1))/(t(2)-t(1)) );
  elseif (i == numel(t))
    DA(i) = double( (y(i)-y(i-1))/(t(i)-t(i-1)) );
  else 
    DA(i) = double( (y(i+1)-y(i-1))/(t(i+1)-t(i-1)) );
    SDA(i-1) = double( (y(i+1)+y(i-1)-2*y(i))/(t(i)-t(i-1))^2 );
  end
  
end

display(DA);
display(SDA);






