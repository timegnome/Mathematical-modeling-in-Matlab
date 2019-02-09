function [ table, P ] = Bisecetion( f, a, b, Toly, Tolx )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
table =[];
i=1;
while i<=Nit
    P=(a+b)/2;fp=f(P);fa=f(a);
    table=[table;i a b P fp];
    if(abs(fp)<Toly)||((b-a)/2<Tolx)
        %plot(table);
        break;
    else
        if fa*fp<0
            b=P;
        else
            a=P;
        end
    end
    i=i+1;
end

end

