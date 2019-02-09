function [ B,Bp ] = Myhorner( A , Xo )
%MyHorner Summary of this function goes here
%   Detailed explanation goes here
B=A(length(A));
Bp=A(length(A));
for i =length(A)-1:-1:2
    B=A(i) + B*Xo;
    Bp =B + Bp*Xo;
end
B=A(1) + B*Xo;
end

