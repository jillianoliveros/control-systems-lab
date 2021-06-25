G=tf([10], [1 10]);
H=tf(0.5, [10 0.5]);
T=feedback(G,H)
ltiview('step',T) % use a step input and display the output on a graph
[num,den]=tfdata(T,'v');
timespec(num, den)  % use timespec for obtaining the peak time, percent,
                    % percent overshoot, rise time, and settling time
               
                    
                    
                    
                    
                    