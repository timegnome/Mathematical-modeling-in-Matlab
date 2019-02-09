function [ w ] = Euler_Method2( f, h, x, y )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
n= length(x)-1;
w=zeros(1,n);
w(1)=y;
for i=1:1:n
    w(i+1)=w(i)+f(x(i),w(i))*h;
end
end
