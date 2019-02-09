function [ IntApp ] = MidPoint_Rule( X,Y )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
n = length(X)-1;
if(mod(n,2)~=0)&&(abs(sum(diff(diff(X))))>10^(-12))
    disp('must have odd # of pts.');
else
    h=X(2)-X(1);
    IntApp=2*h*sum(Y(2:2:n-1));
end
end

