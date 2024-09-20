% Función para graficar respuesta impulsional

function graficoRespuestaImpulsional (n, h, i)
    subplot(3,1,1);
    titulo = sprintf('Respuesta impulsional del sistema %d', i);
    stem(n, h);
    xlabel("s")
    ylabel("h[n]")
    title(titulo);
end


