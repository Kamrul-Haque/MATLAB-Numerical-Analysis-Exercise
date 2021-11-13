clc;
d=input('Input the Equation with right hand side zero:', 's');
f=inline(d);

X=input('Initial value of x:');
Y=input('Initial value of y:');

Xf=input('Input Final value of x:');
h=input('Input Step:');

fprintf('i \t x \t\t\t f(x,y) \t\t y\n');
i=0;

while true
    Xnext = X + h;
    Ynext = Y + h * f(X,Y);
    
    X = Xnext;
    Y = Ynext;
    
    if X == Xf
        break;
    end
    i=i+1;
    fprintf('%i \t %.4f \t %.4f \t %.4f\n',i,Xnext,f(X,Y),Ynext);
end

fprintf('The Result is: %s\n', num2str(Y));
str = ['The Solution is: ', num2str(Y), ''];