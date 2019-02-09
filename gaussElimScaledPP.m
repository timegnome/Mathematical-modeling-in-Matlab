function [x,row,ab]= gaussElimScaledPP(A,B)
% Scaled Partial Pivoting
ab=[A B];
n=rank(A);
for i=1:n
    row(i)=i;
end
row=row';
% calculate scaling values
Sindex = zeros(1, n);
for j=1:n
    jrow = A(j, :);
    Sindex(j) = max(abs(jrow));
end
for k=1:n-1;
    Smax=0;
    index=0;
    for j=k:n
        if abs(ab(row(j),k)) / Sindex(j) > Smax
            Smax=abs(ab(row(j),k)) / Sindex(row(j));
            index=j;
        end
    end
    if row(k)~=row(index)
        ncopy=row(k);
        row(k)=row(index);
        row(index)=ncopy;
    end
    %Gaussian elimination
    for i=(k+1):n
        m(row(i),k)=ab(row(i),k)/ab(row(k),k);
        for j=k:n+1
            ab(row(i),j)=ab(row(i),j)-m(row(i),k)*ab(row(k),j);
        end
    end
end
%backward subsitution
x(n)=0;
x=x';
x(n)=ab(row(n),n+1)/ab(row(n),n);
i=n-1;
while i>0
    x(i)=(ab(row(i),n+1)-ab(row(i),i+1:n)*x(i+1:n))/(ab(row(i),i));
    i=i-1;
end
end