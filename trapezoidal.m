clc;
x=input('Input the Equation with right hand side zero:', 's');
f=inline(x);

b=input('Input Upper Value:');
a=input('Input Lower Value:');
n=input('Input Sub Interval:');

h=(b-a)/n;
fprintf('h:%.4f\n',h);
sum=0;

fprintf('x\t\t\tf(x)\n');

for i=a:h:b
    if i==a || i==b
        sum = sum + f(i);
    else
        sum = sum + (2 * f(i));
    end
    fprintf('%.4f\t\t%.4f \n',i,f(i));
end

result=sum*(h/2);

fprintf('Solution:%.4f',result);