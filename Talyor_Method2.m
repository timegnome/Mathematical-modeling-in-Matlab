function [ w ] = Talyor_Method2( f1, f2, f3, f4, h, x, y )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
n= length(x)-1;
w=zeros(1,n);
w(1)=y;
for i=1:1:n
    w(i+1)=w(i)+f1(x(i),w(i))*h+f2(x(i),w(i))*h/2+f3(x(i),w(i))*h/6+f4(x(i),w(i))*h/24;
end
end
