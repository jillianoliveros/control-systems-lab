syms s K K1 K2
Y = -1/(s+K1*(K1+K2));
Es = -K*Y;
steady_state_error = (limit(Es,0))



