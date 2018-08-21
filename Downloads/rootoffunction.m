clc
clear 
close all
f=input('Enter the function:','s');
a=input('Enter the value of a :');
b=input('Enter the value of b :');

f=inline(f);

 
while ( (f(a))*(f(b))>0)
 
  a=input('\n\nEnter new value of a :');
  b=input('Enter new value of b :');
end
i=1;
c=((f(b)*a)-(f(a)*b))/(f(b)-f(a));
fprintf('\ni\ta     \tb     \tf(a)  \tf(b)   \tc     \tf(c)\n');
while (abs(f(c))>0.01)
    fprintf('\n%d\t%0.4f\t%0.4f\t%0.4f\t%0.4f\t%0.4f\t%0.4f\n',i,a,b,f(a),f(b),c,f(c));
    i=i+1;
    if f(a)*f(c)<0
        b=c;
     c=((f(b)*a)-(f(a)*b))/(f(b)-f(a));
    else
        a=c;
        c=((f(b)*a)-(f(a)*b))/(f(b)-f(a));
    end
    
end

