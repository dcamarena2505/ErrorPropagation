function [dy, y] = totalErrorFunction(f, x, dx)
% TOTALERRORFUNCTION Calcula el valor de una función y la propagación de errores.
%
%  [dy, y] = TOTALERRORFUNCTION(f, x, dx)
%
% ARGUMENTOS:
%   f    - Función vectorial que describe la relación entre variables (y=f(x)).
%   x    - Vector de valores de las variables.
%   dx   - Vector de incertidumbres asociadas a cada variable.
%
% SALIDAS:
%   dy   - Incerteza propagada en el resultado de la función.
%   y    - Resultado de la función con los valores aproximados.
%
% Ejemplo:
% >> % Función real de variable real
% >> x=2; dx=0.4; f=@(x) exp(x);
% >> [dy, y]= totalErrorFunction(f,x,dx);
% >> % Campo escalar
% >> x=[2,30]; dx=[0.4,0.2]; f=@(x) x(1)*x(2) / (x(1)+x(2));
% >> [dy, y]= totalErrorFunction(f,x,dx);
% >> % Campo vectorial
% >> x=[2;30]; dx=[0.4;0.2]; f=@(x) [x(1)+x(2); x(1)*x(2); exp(x(1))];
% >> [dy, y]= totalErrorFunction(f,x,dx);
    
    % Estandarizando como columna
    x=x(:); 
    dx=dx(:);

    % Evaluar la función f
    y = f(x);

    % Dimensiones
    N = length(x);
    M = length(y);
    
    % Jacobiano
    syms t [N 1]
    df_dt = jacobian(f(t), t);
    df_dx = double( subs(df_dt, t, x) );
    
    % Fórmula de propagación de error
    dy = abs(df_dx) * dx ;
end