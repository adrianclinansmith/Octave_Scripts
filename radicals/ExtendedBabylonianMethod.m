%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Extended Babylonian Method: finding the nth root
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 3;       % We will calculate the nth root. 
a = 2;       % The number we want the nth root of.
x = 1;       % An initial guess.
last_x = -1; % If the last value & current value are close, we stop.

while (abs(last_x - x) > 0.0001) 
  
  last_x = x
  x = 0.5*( x + a/x^(n-1) )
  
end

display(x);