function [ l ] = sccnt( f,x,p )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%A='r g b y m c';
%f=input('Enter Function:','s');
i=1;
%x(i)=input('Enter value of x(1):');
%x(i+1)=input('Enter value of x(2):');
%p=input('Enter the decimal place:');
tol=1/(10^p);
er=x(i)-x(i+1);
f=inline(f);
%fprintf('\ni\tx(i)\t    f(x(i)) \tx(i+1) \t  f(x(i+1))\t      Error\n\n');
%fprintf('\n1  \t%f\t%f\t%f\t%f\t%f\t%f\n',x(i),f(x(i)),x(i+1),f(x(i+1)),er);

while(abs(er)>tol)
   
 
    grid on
    i=i+1;
    x(i+1)=(((x(i-1)*f(x(i)))-(x(i)*f(x(i-1))))/(f(x(i))-f(x(i-1))));
 %   fprintf('\n%d\t%f\t%f\t%f\t%f\t%f\t%f\n',i,x(i),f(x(i)),x(i+1),f(x(i+1)),er);
 %k=rem(i,6)+1;
 %plot([x(i-1) x(i) x(i+1)],[f(x(i-1)) f(x(i)) 0],A(k));
 %plot( [x(i+1) x(i+1)],[f(x(i+1)) 0],A(k));
 er=x(i)-x(i+1);
    hold on
end
%X=x(i)-5:0.1:x(i)+5;
 % for j=1:length(X)
  %      Y(j)=f(X(j));
  %end
   % plot(X,Y);
   % grid on
    
l=x(i+1);

%end

