
close all
clear all
x=input('Enter the values of x:');
y=input('Enter the values of y:');
n=length(x);
for j=1:n-1
for i=1:n-j
    if (j==1)
     d(i,1)=(y(i+1)-y(i))/(x(i+j)-x(i));
    else
    d(i,j)=(d(i+1,j-1)-d(i,j-1))/(x(i+j)-x(i));

    end
end    
end
disp(x');
disp(y');
disp(d); 

