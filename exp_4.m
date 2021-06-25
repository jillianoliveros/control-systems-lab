syms s K K1 K2
s = tf('s');
G = (K1*K)/(s+K1*K2+K1*K);
T = feedback(G,1);
t = 0:0.1:25;
u = t;
[y,t,x] = lsim(T,u,t);
plot(t,y,'y',t,u,'m')