g= inline('tan(x)');
p0= 4.5;
Niter= 100;
Tolx= 10^(-4);
i=1;
FP=0;
T= [];
while i<= Niter
    p=g(p0);
    T=[T; i p0 p];
    if abs(p-p0)<Tolx;
        FP=p;
        break;
    end
    i= i+1;
    p0=p;
end
