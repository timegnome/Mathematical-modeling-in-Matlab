function [ w ] = Modified_Euler( f, h, x, y  )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
n= length(x)-1;
w=zeros(1,n);
w(1)=y;
for i=1:1:n
    k1=h*f(x(i),w(i));
    k2=h*f(x(i)+h/2,w(i)+k1/2);
    w(i+1)= w(i)+(k1+k2)/2;
end

end

