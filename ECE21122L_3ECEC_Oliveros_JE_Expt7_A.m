mdl = 'ECE21122L_3ECEC_Oliveros_JE_Expt7_A_1';
open_system(mdl)
syms s
w = .1:.1:1000000;
Ts = tf(linsys1) % linsys1 is the step response
[num,den] = tfdata(Ts);
num = cell2mat(num);
den  = cell2mat(den);

%routh-hurwitz table
routh(den)

%bode plot
[mag,phase] = bode(num,den,w);
[Pm,Gm,Wgc,Wpc] = margin(mag,phase,w)
figure
bode(num,den,w)

%nichol's chart
figure
nichols(Ts),grid

%nyquist plot
figure
nyquistplot(Ts,w)