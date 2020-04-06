%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Extended Babylonian Method: finding the nth root
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 17;      % We will calculate the nth root. 
a = 2;       % The number we want the nth root of: a^(1/n).
x = 1;       % An initial guess.
last_x = -1; % If the last value & current value are close, we stop.

while (abs(last_x - x) > 0.0001) 
  
  last_x = x;
  x = (1/n)*( (n-1)*x + a/x^(n-1) );
  
end

display(x);


