% Sistema 1
function s1 = sistema1 (n,s)
    s1(1) = 1/2 * s(1);
    for k=2:length(n)
        s1(k) = (1/2).*s(k) + (1/2).*s(k-1);
    end
end


