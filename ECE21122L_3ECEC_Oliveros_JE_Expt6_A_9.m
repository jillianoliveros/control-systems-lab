syms s
K = -(s^4 + 12*s^3 + 41*s^2 + 30*s)/(s^2 + 5*s + 6);
K_diff = diff(K,s); % differentiate K with respect to s
K_simp = simplify(K_diff)
[num,den] = numden(K_simp) % extract the numerator and denominator
% numerator = - 2*s^5 - 27*s^4 - 144*s^3 - 391*s^2 - 492*s - 180
% deniminator = (s^2 + 5*s + 6)^2
num = [-2 -27 -144 -391 -492 -180];
num_roots = roots(num)




