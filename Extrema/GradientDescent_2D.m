#####################
# Gradient Descent 2D
#####################


syms x y f(x,y);
f(x,y) = (x^2 + y^2)^(1/2); # Objective function to find a local minimum

deriv_x(x,y) = diff(f,x);  # derivative of f with respect to x
deriv_y(x,y) = diff(f,y);  # derivative of f with respect to y

px = 0.5; # x-value of initial estimate
py = 1;   # y-value of initial estimate
h = 0.5;  # initial step size

qx = px+1; # initialize for while condition

while (h > 0.1 || px != qx)

  magnitude =  ( deriv_x(px,py)^2 + deriv_y(px,py)^2 )^(1/2);
  
  qx = double( px - h*deriv_x(px,py)/magnitude );
  qy = double( py - h*deriv_y(px,py)/magnitude );
  
  if ( f(qx,qy) < f(px,py) )
    px = qx;
    py = qy;
  else 
    h = h/2;
  end
  
  #fprintf('(%f, %f) h = %f\n', px, py, h);
  
end

fprintf('(x,y) = (%f, %f)\n', px, py);
fprintf('h = %f\n', h);
