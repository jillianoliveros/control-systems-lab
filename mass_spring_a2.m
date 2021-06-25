%mass_spring_a2
%ECE21122L_3ECEC_Oliveros_JE_Expt2.A.4

function dXdt = mass_spring_a2(t,X)
% flow rate
M = 10; % Kg
B = 0.5; % Nsec/m
Fa = 1; %N
K = 1; % N/m
r = 1;
%dX/dt
dXdt(1,1) = X(2);
dXdt(2,1) = -B/M*X(2)-K/M*X(1)^r+Fa/M;




