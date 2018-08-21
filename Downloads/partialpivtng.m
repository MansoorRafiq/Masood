clc
clear all
close all
b=input('Enter matrix b:');
n=length(b(:,1));
c=input('Enter matrix c:');
a=[b c];
    disp(a);
for i=1:n
    l=abs(a(i,i));
    for j=i+1:n
          if(abs(a(j,i))>l)
           l=abs(a(j,i));
              m=j;
          end
    end
     t=a(i,:);
      a(i,:)=a(m,:);
       a(m,:)=t;
    a(i,:)=a(i,:)/a(i,i);
    for j=1:n
        if(i==j)
        else
       a(j,:)=a(j,:)-(a(j,i)*a(i,:));
        end
    end
end
disp(a);
for i=1:n
    fprintf('\n x(%d)=%0.3f',i,a(i,n+1));
end


