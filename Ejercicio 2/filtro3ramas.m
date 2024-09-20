function y  = filtro3ramas(x)

N = length(x);  % Obtener la longitud de la señal de entrada

% Inicializar el vector de salida y con ceros
  y = zeros(size(x));

% Aplicar la ecuación en diferencias
  for n=1:N
    if(n <= 8820)
      y(n) = x(n);
    elseif(n <= 17640)
      y(n) = x(n) + (0.45) * x(n-8820);
    elseif(n <= 26460)
      y(n) = x(n) - (0.2)*x(n-17640);
  end
end
end