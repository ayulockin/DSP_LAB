clear all;
close all;
f = 0.2;
t = 0:0.01:10;
x = sin(2*pi*f*t);
y = x./(2*pi*f*t);
plot(t,y);
grid on;