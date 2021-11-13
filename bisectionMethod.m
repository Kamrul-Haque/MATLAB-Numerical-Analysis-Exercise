clc;
x=input('Enter function with right hand side zero:','s');
f=inline(x);
 
while true
    a=input('Input Lower Value:') ;
    b=input('Input Upper Value:');
    
    if f(b)*f(a)<0
        break;
    else
        fprintf('The guess is incorrect! Enter new guesses\n');
    end
end

n=input('Enter the number of iteration:');

fprintf('Iteration \t a  \t\t b  \t\t f(a) \t\t f(b) \t\t t \t\t\t f(t) \n');

for i=1:n
    t=(a+b)/2;
    
	fprintf('%i \t\t\t %.4f \t %.4f \t %.4f \t %.4f \t %.4f \t %.4f \n',i,a,b,f(a),f(b),t,f(t));
    
    if abs(f(t))<0.00001
        break;
    end
    
    if f(a)*f(t)<0
        b=t;
    else
        a=t;
    end
end

fprintf('result: %s\n',num2str(t));
str = ['The required root of the equation is: ', num2str(t), ''];