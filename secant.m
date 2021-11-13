clc;
x=input('Input the Equation with right hand side zero:', 's');
f=inline(x);

while true
    x1=input('Input Lower Value:');
    x2=input('Input Upper Value:');
    
    if f(x1)*f(x2)<0
        break;
    else
        fprintf('Your Input is not Correct. Input another set of value.\n\n');
    end
end

n=input('Input Number of Iteration:');
fprintf('Iteration \t x1 \t\t x2 \t\t f(x1) \t\t f(x2) \t\t Xnext\n');

for i=1:n
    Xn = (x1*f(x2)-x2*f(x1)) / (f(x2)-f(x1));
    fprintf('%i \t\t\t %.4f \t %.4f \t %.4f \t %.4f \t %.4f\n',i,x1,x2,f(x1),f(x2),Xn);

    if x2 == Xn
        break;
    end

    x1 = x2;
    x2 = Xn;
end

fprintf('The Result is: %s\n', num2str(Xn));
str = ['The required root of the equation is: ', num2str(Xn), ''];