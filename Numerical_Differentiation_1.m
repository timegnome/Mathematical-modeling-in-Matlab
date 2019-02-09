function [ Xout, yp ] = Numerical_Differentiation_1( x, y)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
N=length(x);
h=x(1,2)-x(1,1);
yp=zeros(1,N);
for i = 2:(N-1)
    yp(i)=(y(i+1)-y(i-1))/(2*h);
end
yp(1)=(-3*y(1)+4*y(2)-y(3))/(2*h);
yp(N)=(3*y(N)-4*y(N-1)+y(N-2))/(2*h);
Xout=x;
end

