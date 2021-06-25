% uncompensated system
zeros_uncomp = -1;
poles_uncomp = [-4 -4 -4];
gain_uncomp = 1;
uncomp = zpk(zeros_uncomp,poles_uncomp,gain_uncomp);

% compensated system
zeros_comp = -1;
poles_comp = [-5.8620 -4 -4 -4];
gain_comp = 226.3020;
comp = zpk(zeros_comp,poles_comp,gain_comp);

figure
step(feedback(uncomp,1))
stepinfo_uncomp = stepinfo(uncomp)
figure
step(feedback(comp,1))
stepinfo_comp = stepinfo(comp)