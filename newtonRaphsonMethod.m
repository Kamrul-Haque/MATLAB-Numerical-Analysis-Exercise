clc;
x=input('Input the Equation with right hand side zero:', 's');
f=inline(x);

y=diff(sym(x));
df=inline(y);

x1=input('Input Value:');

n=input('Input Number of Iteration:');
fprintf('Iteration \t x1 \t\t f(x1) \t\t df(x1) \t\t Xnext\n');

for i=1:n
    Xn = x1-(f(x1)/df(x1));
    fprintf('%i \t\t\t %.4f \t %.4f \t %.4f \t %.4f\n',i,x1,f(x1),df(x1),Xn);

    if x1 == Xn
        break;
    end
    
    x1 = Xn;
end

fprintf('The Result is: %s\n', num2str(Xn));
str = ['The required root of the equation is: ', num2str(Xn), ''];