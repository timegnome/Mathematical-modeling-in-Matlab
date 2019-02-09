y=[0 1 2];
x=[0 1 2];
N=2;
[a,b,c,d]=Natural_Cubic_Spline(x,y,N);
A=[a(1,1) b(1,1) c(1,1) d(1,1)];
B=[a(1,2) b(1,2) c(1,2) d(1,2)];
X=1;
Niter= 1000;
Tolx= 10^(-6);
T=[];
i=1;
while i<= Niter
    [Fx,Fpx]=Myhorner(B,X);
    p=X-Fx/Fpx;
    T=[T; i X p];
    if abs(p-X)<Tolx;
        FP=p;
        break;
    end
    i= i+1;
    X=p;
end
