clc
clear all
close all
b=input('Enter matrix b:');
n=length(b(:,1));
c=input('Enter matrix c:');
a=[b c];
for i=1:n
    a(i,:)=a(i,:)/a(i,i);
    for j=i+1:n
       a(j,:)=a(j,:)-(a(j,i)*a(i,:));
    end
end

x(n)=a(n,n+1);
for i=n-1:-1:1
    s=0;
    for j=i+1:n
        s=s+(x(j)*a(i,j));
    end
    x(i)=a(i,n+1)-s;
end
for i=1:n
    fprintf('\n x(%d)=%0.3f',i,x(i));
end


