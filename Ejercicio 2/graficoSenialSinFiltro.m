% Función que grafica la señal sin filtrar
function graficoSenialSinFiltro(h)  
    n = 0:18000;
    stem(n,h);
    xlabel("n");
    ylabel("h[n]");
    title("Señal sin filtro");
end


