clc;
a = input('Input the Matrix:');

fprintf('The Matrix is:\n');
disp(a);

c=a;
c(:,4)=[];

if det(sym(c)) == 0
    fprintf('UNSOLVABLE because determinent of matrix:\n');
    disp(c);
    fprintf('is zero.\n');
else
    if a(1,1) ~= 0
        a(2,:) = a(2,1)/a(1,1)*a(1,:)-a(2,:);
        a(3,:) = a(3,1)/a(1,1)*a(1,:)-a(3,:);
    else
        t=a(1,:);
        a(1,:)=a(2,:);
        a(2,:)=t;
    end

    fprintf('New Matrix:\n');
    disp(a);

    if a(2,2) ~= 0
        a(3,:) = a(3,2)/a(2,2)*a(2,:)-a(3,:);
    else
        t=a(2,:);
        a(2,:)=a(3,:);
        a(3,:)=t;
    end

    fprintf('New Matrix:\n');
    disp(a);

    z=a(3,4) / a(3,3);
    y=(a(2,4) - a(2,3)*z) / a(2,2);
    x=(a(1,4) - (a(1,2)*y + a(1,3)*z)) / a(1,1);

    fprintf('Solution:\nx=%.3f\ty=%.3f\tz=%.3f\n',x,y,z);
end