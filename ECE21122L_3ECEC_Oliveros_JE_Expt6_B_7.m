%roots of the roots the closed-loop transfer function for Part B
r = [];
for K = 1:10
    den = [1 K -(2-2*K) 2*(K+2)];
    r(K,:) = roots(den);
end 
disp(r)


