k = 2;
s = tf('s');
w = sqrt(9.81/0.2); 
pendulum = -(9.81/0.2)/(s^2-(9.81/0.2));
sysclp1 = feedback(pendulum,k);
step(-sysclp1)
%rlocus(-pendulum)