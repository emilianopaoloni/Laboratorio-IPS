%% Ejercicio 2
%----------------------------------

% Graficamos la señal de audio
[x, fs] = audioread("audio.wav");
plot(x);
sound(x, fs);
xlabel("t"); 
ylabel("x(t)");

%% Ejercicio 2.1

% Graficamos la respuesta al impulso hA[n]
numAl = 036588;
[n,h] = hcanald(numAl);
stem(n,h);
xlabel("n");
ylabel("hA[n]")

%% Ejercicio 2.2

n = 0:18000;
delta = zeros(length(n));
delta (n == 0) = 1;

% Verificamos que la respuesta impulsional es igual a la hA[n]
hA = funcionEcuacionEnDiferencias(delta);
stem(n,hA);

%% Ejercicio 2.3

% Calculamos la salida al sistema con la señal de audio
y = funcionEcuacionEnDiferencias(x); 
plot(y); % graficamos señal de salida 
sound(y, fs);
xlabel("t");
ylabel("y(t)");

%% Ejercicio 2.4

n = 0:18000;
delta = zeros(length(n));
delta (n == 0) = 1;

[x, fs] = audioread("audio.wav");

% filtro 1 rama
hA = funcionEcuacionEnDiferencias(delta);
subplot(2, 1, 1);
graficoSenialSinFiltro(hA);
hf = filtro1rama(hA);
subplot(2, 1, 2);
graficoSenialConFiltro(hf);

yA = funcionEcuacionEnDiferencias(x);
y2 = filtro1rama(yA);
sound(y2, fs); % con este comando escuchamos la salida del filtro

%%
% filtro 2 ramas
hA = funcionEcuacionEnDiferencias(delta);
subplot(2, 1, 1);
graficoSenialSinFiltro(hA);
hf = filtro2ramas(hA);
subplot(2, 1, 2);
graficoSenialConFiltro(hf);

yA = funcionEcuacionEnDiferencias(x);
y2 = filtro2ramas(yA);
sound(y2, fs);

%%
% filtro 3 ramas
yA = funcionEcuacionEnDiferencias(delta);
subplot(2, 1, 1);
graficoSenialSinFiltro(yA);
y2 = filtro3ramas(yA);
subplot(2, 1, 2);
graficoSenialConFiltro(y2);
 
yA = funcionEcuacionEnDiferencias(x);
y2 = filtro3ramas(yA);
sound(y2, fs);







