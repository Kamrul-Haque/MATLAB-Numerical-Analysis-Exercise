clc;
n=input('No. of Terms:');
X=input('value of x:');

x=zeros(1,n);
f=zeros(1,n);
sum=0;

for i=1:n
    x(i)=input(['x' num2str(i-1) ':']);
    f(i)=input(['f' num2str(i-1) ':']);
end

for i=1:n
    numerator=1;
    denomerator=1;
    for j=1:n
       if i~=j
           numerator = numerator * (X-x(j));
           denomerator = denomerator * (x(i)-x(j));
       end
    end
    sum = sum + ((numerator / denomerator) * f(i));
end

fprintf('The solution is:%.4f\n',sum);