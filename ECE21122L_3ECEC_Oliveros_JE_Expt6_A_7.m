%roots of the roots the closed-loop transfer function for Part A
r = [];
for K = 1:10
    den = [1 12 (41+K) (30+5*K) 6*K];
    r(K,:) = roots(den);
end 
disp(r)


