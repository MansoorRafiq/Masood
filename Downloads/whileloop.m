clc 
clear all
a=input('Enter the value of a')
d=input('Enter the value of d')
i=0
 t= a+(i*d);
  fprintf('\n T%d = %d',i+1,t)
 i=i+1;
while(i<=10)
 t= a+(i*d);
  fprintf('\n T%d = %d',i+1,t)
 i=i+1;
end
