k = 10;
s = tf('s');
w = sqrt(9.81/0.2); 
pendulum = -(9.81/0.2)/(s^2-(9.81/0.2));
compensator = (1+0.09*s)/(1+0.009*s);
yeet = series(pendulum,-compensator);
rlocus(yeet)
% sysclp1 = feedback(compensator,pendulum);
% step(sysclp1)
% rlocus(sysclp1)