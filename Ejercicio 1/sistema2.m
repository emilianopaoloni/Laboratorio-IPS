% Sistema 2
function s2 = sistema2 (n,s)
    for k=2:length(n)
        s2(k) = (1/2).*s(k) - (1/2).*s(k-1);
    end
end
