f= @(x)(x.^2-4*x*cos(x)+(2*cos(x)).^2-1);
fp=@(x)(2*x-4*(x*sin(x)+cos(x))+4*(sin(x))*(cos(x)));
X=(-pi:pi);
Niter= 1000;
Tolx= 10^(-10);
T=[];
i=1;
for n=1:1000
    subplot(3,2,n)
    plot(x,Newtons(f,fp,x,n,Tolx));
end