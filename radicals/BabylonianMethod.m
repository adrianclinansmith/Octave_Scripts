%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Babylonian Method: finding the square root
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a = 2;       % We are trying to find the square root of a.
x = 1;       % An initial guess.
last_x = -1; % If the last value & current value are close, we stop.

while (abs(last_x - x) > 0.0001) 
  
  last_x = x;
  x = 0.5*(x + a/x);
  
end

display(x);



