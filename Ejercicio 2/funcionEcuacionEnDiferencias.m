
% Función que implementa el sistema del Ejercicio 2 en una ecuación en diferencias
function y = funcionEcuacionEnDiferencias(x)

    N = length(x);  % Obtener la longitud de la señal de entrada
    
    % Inicializar el vector de salida y con ceros
    y = zeros(1, N);
    
    % Aplicar la ecuación en diferencias
    for n = 1:N
        if n <= 8820
            y(n) = x(n);
        else
            if ((n > 8820) && (n <= 17640))
                y(n) = x(n) - 0.45 * x(n - 8820);
            else 
                y(n) = x(n)  - 0.45 * x(n - 8820) + 0.2025 * x(n - 17640);
            end
        end
    end
end





