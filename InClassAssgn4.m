A =[-1 -2 0 1];
X=1;
Niter= 1000;
Tolx= 10^(-6);
T=[];
i=1;
while i<= Niter
    [Fx,Fpx]=Myhorner(A,X);
    p=X-Fx/Fpx;
    T=[T; i X p];
    if abs(p-X)<Tolx;
        FP=p;
        break;
    end
    i= i+1;
    X=p;
end
