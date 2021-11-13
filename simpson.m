clc;
x=input('Input the Equation with right hand side zero:', 's');
f=inline(x);

b=input('Input Upper Value:');
a=input('Input Lower Value:');
n=input('Input Sub Interval:');

h=(b-a)/n;
fprintf('h:%.4f\n',h);
count=0;
sum=0;

fprintf('x\t\t\tf(x)\n');

for i=a:h:b
    if i==a || i==b
        sum = sum + f(i);
    elseif rem(count,2)
        sum = sum + (4 * f(i));
    else
        sum = sum + (2 * f(i));
    end
    fprintf('%.4f\t\t%.4f\n',i,f(i));
    count=count+1;
end

result=sum*(h/3);

fprintf('Solution:%.4f\n',result);