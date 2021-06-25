syms k s
G = ((k/(s*(s+2)^2))/(1+k/(s*(s+2)^2))); % formula for negative feedback
tf_G = simplify(G) 
% transfer function is k/(s^3 + 4*s^2 + 4*s + k)
for k = 1:1:20
    fprintf('\n \nwhen k = %.f \n',k)
    routh([1 4 4 k]) % coefficients of the transfer function
end
