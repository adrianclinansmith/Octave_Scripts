###################################################
# Partial Differential Equation: Transport Equation
# Eular's Method
###################################################

a = 0;
b = 3;
num_nodes = 51;
xwidth = (b-a)/(num_nodes-1);

u = 0;
x = 0:3/50:3;

for x = a:b
  u(x,0) = sin(x);
end 
