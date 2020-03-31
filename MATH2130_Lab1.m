% Adrian Clinansmith
% St# 1028785
%
% Lab 1
% January 8, 2020

% more off % command to make function output less annoying

format compact % Less space between lines in the console 
format short e % Diplay 5 digits plus the exponent
format rat     % Diplay as ratio
format long    % Diplay 16 digits
format short   % Display 5 digits
clc            % Clears the console



%%%%%%%%%%%
% Functions
%%%%%%%%%%%

syms x
f(x) = 3*x^2 - 5*x % Define function f
F(x) = int(f(x))   % Integral of f (no +C)
g(x) = diff(f(x))  % Derivative of f

h(x) = f(x) + g(x) % add two functions
double(h(3))       % h(3) as double value


%%%%%%%%%%%%%%%%%%%%
% Vectors & Matrices
%%%%%%%%%%%%%%%%%%%%

v = [1 1+1 3/1]   % Row Vector
w = [1 2 3]'      % Column Vector (transposed row vector)
v(2)              % Access element 2
v(1) = v(3)^w(2)  % Reassign element 1

x = 1:10              % row vector from 1 to 10
y = 2:-.1:1           % row vector from 2 to 1 counting down by 0.1
z = linspace(1,10, 5) % row vector of 5 evenly spaced elements from 1 to 10  

M1 = [1 2 3; 4 5 6; 7 8 9] % 3x3 matrix in one line
M2 = [1 2 3                % Equivalent matrix
      4 5 6
      7 8 9]


M1(2,3)  % Element at row 2, column 3 is 6
M1(2,:)  % All of row 2
M1'      % Transpose

M1 + M1  % M1(i,j) + M2(i,j)
M1 .* M2 % M1(i,j) * M2(i,j) 
M1 .^ M2 % M1(i,j) ^ M2(i,j)

eye(3)     % 3x3 Identity Matrix
zeros(2,3) % 2x3 matrix of zeros


%%%%%%%%%%
% Graphing
%%%%%%%%%%

x = -5:.001:5;
y = x .^2;
plot(x,y)     % plot a parabola (y = x^2) from -5 to 5
grid on       % creates a grid on the plot



%%%%%%%
% loops
%%%%%%%

for i = 3:-.5:0
  fprintf('i is %d\n', i);
end

j = 1;
while j <= 100
  if j > 10
    break
  elseif rem(j,2) == 0
    fprintf('%d is even\n', j);
  else
    fprintf('%d is odd\n', j);
  end
  j = j + 1;
end
