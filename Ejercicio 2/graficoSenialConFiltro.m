% Función que grafica la señal pasada por el filtro
function graficoSenialConFiltro(h)   
    n = 0:18000;
    stem(n,h);
    xlabel("n");
    ylabel("h[n]");
    title("Señal con filtro");
end