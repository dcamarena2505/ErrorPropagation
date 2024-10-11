% Test package

% Installing
installErrorPropagation()

% Compute error
x = [20, 300]; 
dx = [4, 2];
f = @(x) x(1)*x(2)/(x(1)+x(2)); 
[dy, y] = totalErrorFunction(f, x, dx)