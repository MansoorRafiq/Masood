clc
clear all
close all
a=input('Enter matrix a:');
n=size(a,1);
disp (a);
l=0;
for i=1:n
    for j=1:n
          if(a(j,i)>l)
           l=a(j,i)
           m=j
           n1=i
       end
    end
end
fprintf('\n Largest value is %d at %d r0w and %d col.',l,m,n1);