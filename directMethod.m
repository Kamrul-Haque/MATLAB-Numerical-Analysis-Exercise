clc;
m = input('Input the Matrix:');

fprintf('The Matrix is:\n');
disp(m);

c=m;
c(:,3)=[];

if det(sym(c)) == 0
    fprintf('UNSOLVABLE because determinent of matrix:\n');
    disp(c);
    fprintf('is zero.\n');
else
    if m(1,1) ~= 0
        m(2,:) = m(2,1)/m(1,1)*m(1,:)-m(2,:);
    else
        t=m(1,:);
        m(1,:)=m(2,:);
        m(2,:)=t;
    end

    fprintf('New Matrix:\n');
    disp(m);

    a1=m(2,3)/m(2,2);
    a0=(m(1,3)-m(1,2)*a1)/m(1,1);

    fprintf('Solution:\na0=%.3f\ta1=%.3f\n',a0,a1);
end