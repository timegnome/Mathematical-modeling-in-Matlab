function [ yprime ] = secondorder( y, x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
h=x(2)-x(1);
n=length(x)-1;
yprime=0:n;
yprime(1)=(-3*y(1)+4*y(2)-y(3))/(2*h);
yprime(n)=(3*y(n)-4*y(n-1)+y(n-2))/(2*h);
for i=2:(n-1) 
    yprime(i)=(y(i)+4*y(i+1)-y(i+2))/(2*h);
end
end

