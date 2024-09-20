% Sistema 3 
function s3 = sistema3 (n,s)
    s3(1) = 0; % condicion inicial
    for k=2:length(n)
        s3(k) = (1/4).*s(k) + (1/4).*s(k-1) + 1/2 * s3(k-1);
    end
end
