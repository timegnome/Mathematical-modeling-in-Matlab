function [ IntApp ] = Simpson_Rule( X, Y )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
n = length(X)-1;
if(mod(n,2)~=0)&&(abs(sum(diff(diff(X))))>10^(-12))
    disp('must have odd # of pts.');
else
    h=X(2)-X(1);
    IntApp= (h*(Y(1)+2*sum(Y(3:2:n-2))+4*sum(Y(2:2:n-1))+Y(n)))/3;
end

end

