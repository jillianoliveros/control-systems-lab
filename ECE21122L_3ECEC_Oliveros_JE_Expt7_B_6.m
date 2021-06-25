close all
clear all
syms s
K1 = 0.78;
num = [K1*(s+0.4)*(s+0.6)]; % with added integral gain
den = [s*(s+0.5858)*(s+0.0163)]; % with added integral gain
w = 0:0.1:10;
num1 = sym2poly(num);
den1 = sym2poly(den);
Gs = tf(num1,den1); % forward transfer function
Ts = Gs/(1+Gs) % closed-loop transfer function
[num2,den2] = tfdata(Ts);
num2 = cell2mat(num2);
den2 = cell2mat(den2);
step_opt = stepDataOptions('StepAmplitude',4); % step input of 4
[y,t] = step(Ts,step_opt);
figure
step(Ts,step_opt) % step response plot of the system
step_info = stepinfo(y,t) % performance specifications
[mag,phase]=bode(num2,den2,w);
figure
bode(num2,den2) % bode plot of the system
