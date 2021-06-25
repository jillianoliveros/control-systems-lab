syms s 
K = 1;
K2 = 1;
for K1 = 1:1:10
    G = (K*K1)/(s+(K1*K2)+(K*K1)); % transfer function
    [num,den] = numden(G);
    num = sym2poly(num);
    den = sym2poly(den);
    hold on
    step(num,den)
    timespec(num,den) % for selecting the fastest response
end


