% Babylonian method to find the square root
% https://en.wikipedia.org/wiki/Methods_of_computing_square_roots

S = 2;  % square root
a = 1; % initial guess

for i = 1:10
  a = 0.5*(a + S/a)
end

a