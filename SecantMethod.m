function [ T, FP ] = SecantMethod( f, p1, p0, Niter, Tolx )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
i=2;
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
    FP=p;
end

end

