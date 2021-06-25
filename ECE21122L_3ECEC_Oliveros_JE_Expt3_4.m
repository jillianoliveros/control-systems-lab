% to generate the LTI transfer function using the state-space 
% representation from step 3
num = [0 0 0 0 0 1 0];
den = [1 3 5 6 4 2 0];
[A,B,C,D] = tf2ss(num,den); 
[num,den] = ss2tf(A,B,C,D,1) % state-space to transfer function

% to generate the LTI transfer function using the state-space 
% representation manually solved from step 1
A = [0 1 0 0 0 0; -1 -1 0 1 0 0; 0 0 0 1 0 0; 0 1 -1 -1 1 0; 0 0 0 0 0 1; 0 0 1 0 -1 -1];
B = [0;1;0;0;0;0];
C = [0 0 0 0 1 0];
D = 0;
[num,den] = ss2tf(A,B,C,D,1) % state-space to transfer function

