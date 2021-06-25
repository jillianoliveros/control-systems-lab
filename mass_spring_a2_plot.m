%mass_spring_a2_plot
%ECE21122L_3ECEC_Oliveros_JE_Expt2.A.5

X0=[0;0];
options=odeset('RelTol',[1e-4 1e-4], 'AbsTol', [1e-5 1e-5], 'Stats','on');
[t,X]=ode45('mass_spring_a2',[0,200],X0);
plot(t,X); grid on;


