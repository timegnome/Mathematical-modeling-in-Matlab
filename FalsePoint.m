function [ table, sol ] = FalsePoint( f, p1, p0, Toly, Tolx )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
table = [];
i=2;
while i<=Nit
    p=p1-f(p1)*(p1-p0)/(f(p1)-f(p0));
    fp=f(p);
    fa=f(p1);
    table=[table;i p0 p1 p fp];
    if(abs(p-p1)<Toly)||(abs(p1-p0)<Tolx)
        sol=p;
        break;
    else
        if fa*fp<0
            p0=p;
        else
            p1=p;
        end
        sol=p;
    end
    i=i+1;
end

end

