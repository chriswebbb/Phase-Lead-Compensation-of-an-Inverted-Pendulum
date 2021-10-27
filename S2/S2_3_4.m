k = 2;
s = tf('s');
w = sqrt(9.81/0.2);
servo=tf([1],[0.00025 0.02 1]);
pendulumOne = -(9.81/0.001)/(s^2-(9.81/0.001));
compensator = (1+0.1*s)/(1+0.01*s);
actual=series(servo,pendulum);
sys4 = series(-compensator,actual);
%step(sysclp1)
rlocus(sys4)
rlocfind(sys4)
sysclp3=feedback(sys4,k);