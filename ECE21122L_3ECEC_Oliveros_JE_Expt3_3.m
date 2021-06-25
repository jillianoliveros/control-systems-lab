% to generate the LTI state-space representation using the transfer
% equation from step 2
num = [0 0 0 0 0 1 0];
den = [1 3 5 6 4 2 0];
[A,B,C,D] = tf2ss(num,den) %transfer function to state space
