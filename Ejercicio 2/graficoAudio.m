
% Graficamos la señal de audio

[x, fs] = audioread("audio.wav");
plot(x);
sound(x, fs);
xlabel("t"); 
ylabel("x(t)");







