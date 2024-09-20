%% Ejercicio 1 
%----------------------------------
% Ejercicio 1.1
numAlu = 036588;

% Graficamos la señal discreta con un paso de 1 utilizando el comando stem
[n,x] = senial(numAlu);

subplot(3,1,1);
stem(n,x);
xlabel("n")
ylabel("x[n]")
title("Señal discreta")

% Calculamos la TFTD de la señal x
X = TFTD(x,n);

% Graficamos modulo y fase de la TFTD  
graficarTFTD(X);


%% Ejercicio 1.3
n = -10:10; 
delta = zeros(size(n));
delta (n == 0) = 1;

%%--------------------------------------------------
% Verificamos la respuesta impulsional del sistema 1
h1 = sistema1(n, delta);
graficoRespuestaImpulsional(n, h1, 1);
% Calculamos la TFTD
H1 = TFTD(h1, n);
% Graficamos modulo y fase de la TFTD  
graficarTFTD(H1);

%%

% Verificamos la respuesta impulsional del sistema 2
h2 = sistema2(n, delta);
graficoRespuestaImpulsional(n, h2, 2);
% Calculamos la TFTD 
H2 = TFTD(h2, n);
% Graficamos modulo y fase de la TFTD  
graficarTFTD(H2);

%%

% Verificamos la respuesta impulsional del sistema 3
h3 = sistema3(n, delta);
graficoRespuestaImpulsional(n, h3, 3);
% Calculamos la TFTD 
H3 = TFTD(h3, n);
% Graficamos modulo y fase de la TFTD  
graficarTFTD(H3);

%%

% Verificamos la respuesta impulsional del sistema 4
h4 = sistema4(n, delta);
graficoRespuestaImpulsional(n, h4, 4);
% Calculamos la TFTD 
H4 = TFTD(h4, n);
% Graficamos modulo y fase de la TFTD  
graficarTFTD(H4);

%% Ejercicio 4 y 5

% Obtenemos la señal de salida para sistema 1 cuando la entrada es la señal del inciso 1
% Luego obtenemos la TFTD de la salida (modulo y fase)
n = 0:100;
y1 = sistema1(n, x);
graficoSenialDeSalida(n, y1, 1);
% Calculamos la TFTD de y1[n]
Y1 = TFTD(y1, n);
% Graficamos modulo y fase de la TFTD  
graficarTFTD(Y1);

%%

% Obtenemos la señal de salida para sistema 2 cuando la entrada es la señal
% del inciso 1
% Luego obtenemos la TFTD de la salida (modulo y fase)
n = 0:100;
y2 = sistema2(n, x);
graficoSenialDeSalida(n, y2, 2);
% Calculamos la TFTD de y2[n]
Y2 = TFTD(y2, n);
% Graficamos modulo y fase de la TFTD   
graficarTFTD(Y2);

%%

% Obtenemos la señal de salida para sistema 3 cuando la entrada es la señal
% del inciso 1
% Luego obtenemos la TFTD de la salida (modulo y fase)
n = 0:100;
y3 = sistema3(n, x);
graficoSenialDeSalida(n, y3, 3);
% Calculamos la TFTD de y3[n]
Y3 = TFTD(y3, n);
% Graficamos modulo y fase de la TFTD  
graficarTFTD(Y3);

%%
% Obtenemos la señal de salida para sistema 4 cuando la entrada es la señal
% del inciso 1
% Luego obtenemos la TFTD de la salida (modulo y fase)
n = 0:100;
y4 = sistema4(n, x);
graficoSenialDeSalida(n, y4, 4);
% Calculamos la TFTD de y4[n]
Y4 = TFTD(y4, n);
% Graficamos modulo y fase de la TFTD 
graficarTFTD(Y4);
