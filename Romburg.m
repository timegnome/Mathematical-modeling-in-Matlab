function [ YY ] = Romburg( X, Y )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
H=min(diff(X));
n = round((X(1)-X(end))|H);
if(mod(n,2)==0)
    disp('odd # of pts.');
    n=n+1;
end
XX=linspace(X(1), X(end), n);
YY=interp1(X,Y,XX);
end
