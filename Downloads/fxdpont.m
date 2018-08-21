clc
clear
close all
f=input('Enter the function f(x):');
f=inline(f);
i=1;
g=input('Enter the function g(x):');
g=inline(g);
x(i)=input('Enter the value of x');

while (abs(f(x(i)))>0.0001)
    x(i+1)=g(x(i));
    i=i+1;
end
disp(x(i));




