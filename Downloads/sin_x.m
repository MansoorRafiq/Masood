clc
clear
close all
x=input('/nEnter the value of x for f(x)=cos x :');
angle=3.142/(180/x);
i=1;
t(i)=1;
s(i)=1;

tolerence=input('/nEnter the tolerence of error for f(x)=cos x :');


while (abs(t(i))>tolerence)
    i=i+1;
    t(i)=t(i-1)*(-(angle^2))/(((2*i)-3)*((2*i)-2));
    s(i)=s(i-1)+t(i);
 
end

fprintf('/n cos %d=%0.3f',x,s(i));