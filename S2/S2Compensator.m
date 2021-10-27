k = 2;
s = tf('s');
w = sqrt(9.81/0.2); 
pendulum = -(9.81/0.2)/(s^2-(9.81/0.2));
compensator = (1+0.1*s)/(1+0.01*s);
sysclp1 = feedback(-compensator,pendulum);
step(sysclp1)
rlocus(sysclp1)