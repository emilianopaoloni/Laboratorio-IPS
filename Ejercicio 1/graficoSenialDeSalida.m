% Función para graficar la salida del sistema

function graficoSenialDeSalida (n, y, i)
    subplot(3,1,1);
    titulo = sprintf('Señal de salida para el sistema %d', i);
    stem(n, y);
    xlabel("s")
    ylabel("y[n]")
    title(titulo);
end
