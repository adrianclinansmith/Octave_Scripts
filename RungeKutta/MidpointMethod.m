%%%%%%%%%%%%%%%%%
% Midpoint Method
%%%%%%%%%%%%%%%%%

syms t y f(t,y);

f(t,y) = y + sin(pi*t); % DE
curr_t = 0;             % initial t
curr_y = 1;             % initial y
last_t = 2;             % t to estimate 
h = 1;                  % step size

while (curr_t < last_t)
  
  k1 = double( h*f(curr_t, curr_y) );
  k2 = double( h*f(curr_t+h/2, curr_y+k1/2) );
  curr_y = curr_y+k2;
  curr_t = curr_t+h;
  
  fprintf('(%g, %g)\n', curr_t, curr_y);
  
end