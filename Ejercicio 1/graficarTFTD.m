% Función para graficar señal de salida

function graficarTFTD (X)
    ds = 0.001;
    s = -0.5:ds:0.5;
    subplot(3,1,2);
    plot(s, abs(X)); % modulo
    xlabel("s");
    ylabel("|X(e^{j2πs})|"); 
    title("Módulo de TFTD")

    subplot(3,1,3);
    plot(s, angle(X)); % fase
    xlabel("s");
    ylabel("Φ "); 
    title("Fase de TFTD")
end


