clc
clear
close all
t=0:0.01:2;
f=1;
A=10;
a=20;
w=2*pi*f;

x=A*sin(w*t);

y=a*sin(w*t);
subplot(2,2,1)
plot(t,x,'r:');
subplot(2,2,3)
plot(t,y);
title('plot of sine wave');
xlabel('time(sec)')
ylabel('votage(volts)')