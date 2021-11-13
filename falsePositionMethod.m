clc;
x=input('Enter function with right hand side zero:','s');
f=inline(x);

while true
    x1=input('Input Lower Value:');
    x2=input('Input Upper Value:');
    
    if f(x2)*f(x1)<0
        break;
    else
        fprintf('\nYour input is not Correct. Please enter another Interval.\n\n');
    end
end

n=input('Enter the number of iteration:');

fprintf('Iteration \t x1 \t\t x2 \t\t f(x1) \t\t f(x2) \t\t Xnext \t\t f(Xnext) \n');
 
for i=1:n
    Xn=x1-((x2-x1)*f(x1)/(f(x2)-f(x1)));
    
    fprintf('%i \t\t\t %.4f \t %.4f \t %.4f \t %.4f \t %.4f \t %.4f \n',i,x1,x2,f(x1),f(x2),Xn,f(Xn));
    
    if abs(f(Xn))<0.00001
        break;
    end
    
    if f(x1)*f(Xn)<0
        x2=Xn;
    else
        x1=Xn;
    end
end

fprintf('result: %s\n',num2str(Xn));
str = ['The required root of the equation is: ', num2str(Xn), ''];