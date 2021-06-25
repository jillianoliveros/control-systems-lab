%mass_spring_plot
%ECE21122L_3ECEC_Oliveros_JE_Expt2.A.3

X0=[0;0];
options=odeset('RelTol',[1e-4 1e-4], 'AbsTol', [1e-5 1e-5], 'Stats','on');
figure
[t1,X1]=ode45('mass_spring_1',[0,200],X0);
plot(t1,X1); grid on;
hold on
[t2,X2]=ode45('mass_spring_2',[0,200],X0);
plot(t2,X2); grid on;
hold on
[t3,X3]=ode45('mass_spring_3',[0,200],X0);
plot(t3,X3); grid on;
title('Velocity and Displacement when r=1, r=2, r=3')
hold off

figure
[t1,X1]=ode45('mass_spring_1',[0,200],X0);
subplot(2,2,1)
plot(t1,X1(:,1)); grid on;
title('Velocity when r=1')
[t2,X2]=ode45('mass_spring_2',[0,200],X0);
subplot(2,2,2)
plot(t2,X2(:,1)); grid on;
title('Velocity when r=2')
[t3,X3]=ode45('mass_spring_3',[0,200],X0);
subplot(2,2,3)
plot(t3,X3(:,1)); grid on;
title('Velocity when r=3')
[t1,X1]=ode45('mass_spring_1',[0,200],X0);
[t2,X2]=ode45('mass_spring_2',[0,200],X0);
[t3,X3]=ode45('mass_spring_3',[0,200],X0);
subplot(2,2,4)
plot(t1,X1(:,1)); grid on;
hold on
plot(t2,X2(:,1)); grid on;
hold on
plot(t3,X3(:,1)); grid on;
hold on
title('Velocity when r=1, r=2, r=3')
hold off

figure
[t1,X1]=ode45('mass_spring_1',[0,200],X0);
subplot(2,2,1)
plot(t1,X1(:,2)); grid on;
title('Displacement when r=1')
[t2,X2]=ode45('mass_spring_2',[0,200],X0);
subplot(2,2,2)
plot(t2,X2(:,2)); grid on;
title('Displacement when r=2')
[t3,X3]=ode45('mass_spring_3',[0,200],X0);
subplot(2,2,3)
plot(t3,X3(:,2)); grid on;
title('Displacement when r=3')
[t1,X1]=ode45('mass_spring_1',[0,200],X0);
[t2,X2]=ode45('mass_spring_2',[0,200],X0);
[t3,X3]=ode45('mass_spring_3',[0,200],X0);
subplot(2,2,4)
plot(t1,X1(:,2)); grid on;
hold on
plot(t2,X2(:,2)); grid on;
hold on
plot(t3,X3(:,2)); grid on;
hold on
title('Displacement when r=1, r=2, r=3')
hold off


