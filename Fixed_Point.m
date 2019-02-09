function [ T, FP ] = Fixed_Point( g, p0, Niter, Tolx )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
i=1;
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
    FP=p;
end

end

