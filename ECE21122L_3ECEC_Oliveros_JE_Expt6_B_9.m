syms s
K = -(s^2 + 2*s + 2)/(s^3 - 2*s + 4);
K_diff = diff(K,s); % differentiate K with respect to s
K_simp = simplify(K_diff)
[num,den] = numden(K_simp) % extract the numerator and denominator
% numerator = s^4 + 4*s^3 + 8*s^2 - 8*s - 12
% deniminator = (s^3 - 2*s + 4)^2
num = [1 4 8 -8 -12];
num_roots = roots(num)




