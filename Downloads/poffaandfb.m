clc
clear 
close all
f=input('Enter the function:');
a=input('Enter the value of a :');
b=input('Enter the value of b :');
 
while ( (f(a))*(f(b))>0)
  
  a=input('\n\nEnter new value of a :');
  b=input('Enter new value of b :');
end

