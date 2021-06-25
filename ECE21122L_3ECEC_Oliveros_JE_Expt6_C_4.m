syms s
pole_location = imag(pole)/(s-abs(real(pole))) == tand(ac);
pole_location = double(solve(pole_location,s))
