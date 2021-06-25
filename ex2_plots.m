%ex2_plots
%ECE21122L_3ECEC_Oliveros_JE_Expt2.B.5

subplot(2,1,1)
sim ('ex1_model')
plot(t,x); grid on;
hold on
B = 8;
sim ('ex1_model')
plot(t,x); grid on;
B = 12;
sim ('ex1_model')
plot(t,x); grid on;
B = 25;
sim ('ex1_model')
plot(t,x); grid on;
hold off
ylabel('Displacement(m)');

subplot(2,1,2)
B = 4;
sim ('ex1_model')
plot(t,v); grid on;
hold on
B = 8;
sim ('ex1_model')
plot(t,v); grid on;
B = 12;
sim ('ex1_model')
plot(t,v); grid on;
B = 25;
sim ('ex1_model')
plot(t,v); grid on;
hold off
ylabel('Velocity(m per s)');
