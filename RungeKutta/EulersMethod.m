%%%%%%%%%%%%%%%%
% Euler's Method
%%%%%%%%%%%%%%%%

warning('off', 'OctSymPy:sym:rationalapprox'); % turn off "warning: passing floating-point values to sym..."

syms t y f(t,y);

f(t,y) = y + sin(pi*t); % Differential Equation (DE)
t_val = 0.0;            % Initial condition for t
y_val = 1.0;            % Initial condition for y
t_last = 2.0;           % t value to be estimated
h = 0.5;                % Step size

while (t_val < t_last)
  
  y_val = y_val + h*f(t_val,y_val);
  t_val = t_val + h;
  
  fprintf('(%g, %g)\n', double(t_val), double(y_val));
  
end