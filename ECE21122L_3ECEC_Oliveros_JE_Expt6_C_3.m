k = -1;
pole = -2.5 + 5.6657i; % solved pole
char = [-1 -4 -4 -4]; 
for i = 1:length(char)
    l(i) = pole - char(i);
    a(i) = rad2deg(cart2pol(real(l(i)),imag(l(i))));
end
x = sum(a(1)-sum(a(2:4)));
syms s
angle_comp = x - s == (2*k+1)*180;
angle_comp = double(solve(angle_comp,s))

d = 59.3181;
e = 5.8620;
g = 1/(d+4)^3;
cg = (d+1)/(d+e);
K = abs(1/(g*cg))
