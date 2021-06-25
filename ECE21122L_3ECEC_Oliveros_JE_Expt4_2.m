syms s K K1 K2
T=(K*K1)/(s+(K1*K)+(K1*K2)); %transfer function
partial_derivative_K1 = (diff(T,K1));
partial_derivative_K = (diff(T,K));
simplify_K1 = simplify(partial_derivative_K1);
simplify_K = simplify(partial_derivative_K);
sensitivity_K1 = simplify_K1*(K1/T)
sensitivity_K = simplify_K*(K/T)




