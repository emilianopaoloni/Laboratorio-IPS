function y = filtro1rama(x)

    N = length(x);  % Obtener la longitud de la señal de entrada
    
    % Inicializar el vector de salida y con ceros
    y = zeros(1, N);
    
    % Aplicamos la ecuación en diferencias
    for n = 1:N
        if n <= 8820
            y(n) = x(n);
        else
            if ((n > 8820) && (n <= 17640))
                y(n) = x(n) + 0.45 * x(n - 8820);
            end
        end
    end
end