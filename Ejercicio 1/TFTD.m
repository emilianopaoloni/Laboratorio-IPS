% Transformada de Fourier de Tiempo Discreto 

function X = TFTD (x, n)
    ds = 0.001; 
    s = -1/2:ds:1/2;
    X = zeros(size(s));
    for k = 1:length(s)
        X(k) = sum(x.*exp(-1i*2*pi*s(k)*n)); % definición de TFTD
    end
end