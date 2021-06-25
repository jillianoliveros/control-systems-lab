v0 = 0;
[t,v] = ode45('cruise_speed',[0 125],v0);
plot(t,v); grid on;
title('Cruise speed time response to a constant traction force Fa(t)')