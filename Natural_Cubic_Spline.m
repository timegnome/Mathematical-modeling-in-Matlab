function [ A1,B1,C1,D1 ] = Natural_Cubic_Spline( X, A, N )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
N=N+1;
H=zeros(1,N-1);
A1=A;
B1=zeros(1,N);
C1=zeros(1,N);
D1=zeros(1,N);
alpha=zeros(1,N-1);
linea=zeros(1,N-1);
zeta=zeros(1,N);
unte=zeros(1,N);
for i=1:N-1
    H(1,i)=X(1,i+1)-X(1,i);
end
for i=2:N-1
   alpha(1,i)=3*(A(1,i+1)-A(1,i))/H(1,i)-3*(A(1,i)-A(1,i-1))/H(1,i-1);
end
linea(1,1)=1;
unte(1,1)=0;
zeta(1,1)=0;
for i=2:N-1
   linea(1,i)=2*(X(1,i+1)-X(1,i-1))-H(1,i-1)*unte(1,i-1);
   unte(1,i)=H(1,i)/linea(1,i);
   zeta(1,i)=(alpha(1,i)-H(1,i-1)*zeta(1,i-1))/linea(1,i);
end
linea(1,N)=1;
C1(1,N)=0;
zeta(1,N)=0;
for j=N-1:-1:1
    C1(1,j)=zeta(1,j)-unte(1,j)*C1(1,j+1);
    B1(1,j)=(A1(1,j+1)-A1(1,j))/H(1,j)-H(1,j)*(C1(1,j+1)+2*C1(1,j))/3;
    D1(1,j)=(C1(1,j+1)-C1(1,j))/(3*H(1,j));
end
end

