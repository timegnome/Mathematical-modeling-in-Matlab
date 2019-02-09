function [ FP ] = Newtons( f, fp, p0, Niter, Tolx )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
T=[];
i=1;
while i<= Niter
    p=p0-f(p0)./fp(p0);
    T=[T; i p0 p];
    if abs(p-p0)<Tolx;
        FP=p;
        break;
    end
    i= i+1;
    p0=p;
    FP=p;
end

end

