%%%%%%%%%%%%%%%
% Runge-Kutta 4
%%%%%%%%%%%%%%%

syms t y f(t,y);

f(t,y) = t*log(y); % DE
curr_t = 0;        % initial t
curr_y = 2;        % initial y
last_t = 1;        % t to estimate 
h = 1;             % step size

while (curr_t < last_t)
  
  k1 = double( h*f(curr_t, curr_y) );
  k2 = double( h*f(curr_t+h/2, curr_y+k1/2) );
  k3 = double( h*f(curr_t+h/2, curr_y+k2/2) );
  k4 = double( h*f(curr_t+h, curr_y+k3) );
  R = k1/6 + k2/3 + k3/3 + k4/6;
  curr_y = curr_y+R;
  curr_t = curr_t+h;
  
  fprintf('(%g, %g)\n', curr_t, curr_y);
  
end