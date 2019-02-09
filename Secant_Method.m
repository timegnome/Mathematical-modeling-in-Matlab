f= inline('tan(pi*x)-6');
p0= 0;
p1= 0.48;
Niter= 20;
Tolx= 10^(-6);
i=2;
FP=0;
T= [];
while i<= Niter
    p=p1-f(p1)*(p1-p0)/(f(p1)-f(p0));
    T=[T; i p0 p1 p];
    if abs(p-p1)<Tolx;
        FP=p;
        break;
    end
    i= i+1;
    p1=p;
    p0=p1;
end
