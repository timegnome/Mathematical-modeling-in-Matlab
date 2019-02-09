function [ IntApp ] = Trapezoidal_Rule( X, Y )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
n = length(X)-1;
if(abs(sum(diff(diff(X))))>10^(-12))
    disp('must have be Equally spread');
else
    h=X(2)-X(1);
    IntApp=h*(Y(1)+2*sum(Y(2:n-1))+Y(n))/2;
end

end

