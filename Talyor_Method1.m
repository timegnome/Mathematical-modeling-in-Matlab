function [ w ] = Talyor_Method1( f1,f2, h, x, y )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
n= length(x)-1;
w=zeros(1,n);
w(1)=y;
for i=1:1:n
    w(i+1)=w(i)+f1(x(i),w(i))*h+f2(x(i),w(i))*h/2;
end
end
