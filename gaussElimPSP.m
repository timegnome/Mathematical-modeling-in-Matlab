function [x_soln,nrow,Ab]= gaussElimPSP(A,B)
%Note that this program does not directly change the rows of the augmented
%matrix. Instead it uses the nrow vector to keep track of the row changes.
%create the augmented matrix A|B
Ab=[A B];
n=rank(A);
%initialize the nrow vector
for i=1:n
    nrow(i)=i;
end
nrow=nrow';
for k=1:n-1;
    Smax=0;
    index=0;
    %find the maximum value in the column under the current checked element and
    %return its row position
    for j=k:n
        if abs(Ab(nrow(j),k))>Smax
            Smax=abs(Ab(nrow(j),k));
            index=j;
        end
    end
    %perform row exchange in the nrow vector
    if nrow(k)~=nrow(index)
        ncopy=nrow(k);
        nrow(k)=nrow(index);
        nrow(index)=ncopy;
        disp(sprintf ('row changed '))
    else
        disp(sprintf ('no change '))
    end
    %Gaussian elimination
    for i=(k+1):n
        m(nrow(i),k)=Ab(nrow(i),k)/Ab(nrow(k),k);
        for j=k:n+1
            Ab(nrow(i),j)=Ab(nrow(i),j)-m(nrow(i),k)*Ab(nrow(k),j);
        end
    end
end
%backward subsitution
x(n)=0;
x=x';
x(n)=Ab(nrow(n),n+1)/Ab(nrow(n),n);
i=n-1;
while i>0
    x(i)=(Ab(nrow(i),n+1)-Ab(nrow(i),i+1:n)*x(i+1:n))/(Ab(nrow(i),i));
    i=i-1;
end
x_soln=x;
end