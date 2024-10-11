# ErrorPropagation Package

Este paquete en MATLAB proporciona funciones para la propagación de errores utilizando un promedio simple de errores.

## Organización del paquete
```
ErrorPropagation/
├── functions/                  % Carpeta que contiene las funciones
│   └── totalErrorFunction.m    % Función para calcular el error total
├── README.md                   % Descripción del paquete
├── installErrorPropagation.m   % Script para agregar la ruta del paquete a MATLAB
└── startup.m                   % Script para añadir la ruta al inicio de MATLAB
```

## Funciones Incluidas:
- **totalErrorFunction(f, x, dx)**: Calcula el valor de una función y el error total considerando la propagación de errores. 

Trabaja con funciones anónimas de MATLAB, funciones definidas por scripts de MATLAB y se puede adaptar para cálculo simbólico.

## Ejemplo de Uso
```matlab
x = [20, 300]; 
dx = [4, 2];
f = @(x) x(1)*x(2)/(x(1)+x(2)); 
[dy, y] = totalErrorFunction(f, x, dx);
```

## Versión

**Versión 1.0** 

Desarrollado al 11/10/2024 

Correo victor.camarena@upch.pe 

Revisado al 11/10/2024: 
- Evaluar la inclusión del uso de funciones en forma simbólica (actualmente se puede manejar con cálculos previos)
- Adicionar propagación de errores con la norma cuadrática (actualmente solo considera la norma de la suma)
- Adicionar documentación sobre la teoría matemática empleada
