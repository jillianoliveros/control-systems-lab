close all
clear all
syms s
K = 48.82; % calculated gain
num = [K*(s+0.6)];
den = [s*(s+0.5858)];
w = 0:0.1:100;
num1 = sym2poly(num);
den1 = sym2poly(den);
bode(num1,den1,w) % bode plot of the system

%solving for the damping ratio given %OS of 4.32
syms zeta
OS = exp(-(pi*zeta)/(sqrt(1-zeta^2)))*100 == 4.32;
solved_zeta = round(vpasolve(OS,zeta),5)
