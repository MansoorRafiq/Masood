clc
clear all
close all
A=('r m g b y k');
f=input('Enter Function:','s');
i=2;
x(1)=input('Enter value of x:');
x(i)=input('Enter value of x:');
p=input('Enter the decimal places:');
tol=(10^(-p-1));
f=inline(f);
fprintf('\ni-1\tx(i-1)\t    x(i)    \tf(x(i-1))  \tf(x(i))  \terror\n\n');
err=x(i)-x(i-1);
while(abs(err)>tol)
    x(i+1)=((x(i-1)*(f(x(i))))-((x(i))*(f(x(i-1)))))/((f(x(i)))-(f(x(i-1))));
    k=randi(6);
    plot([x(i) x(i-1) x(i+1)],[f(x(i)) f(x(i-1)) 0],A(k));
    hold on
    grid on
    
    fprintf('%d\t%f\t%f\t%f\t%f\t%f\n',i-1,x(i-1),x(i),f(x(i-1)),f(x(i)),err);
    i=i+1;
    err=x(i)-x(i-1);

end
X=x(i)-5:0.1:x(i)+5;
  for j=1:length(X)
        Y(j)=f(X(j));
  end
    plot(X,Y);
    
    grid on
    
