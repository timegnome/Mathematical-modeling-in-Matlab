f= @(x)(x.^2-4.*x.*cos(x)+(2.*cos(x)).^2-1);
fp=@(x)(2.*x-4.*(x.*sin(x)+cos(x))+4.*(sin(x)).*(cos(x)));
p0= 0;
Niter= 1000;
Tolx= 10^(-10);
i=1;
FP=0;
T= [];
while i<= Niter
    p=p0-f(p0)/fp(p0);
    T=[T; i p0 p];
    if abs(p-p0)<Tolx;
        FP=p;
        break;
    end
    i= i+1;
    p0=p;
end
