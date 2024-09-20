% Sistema 4
function s4 = sistema4 (n,s)
    s4(1) = 0;
    for k=2:length(n)
        s4(k) = (1/4).*s(k) - (1/4).*s(k-1) - 1/2.* s4(1);
    end
end
