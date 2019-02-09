f=@(x)sin(x);
x=0:0.01:1;
y=f(x);
[a,b]=Numerical_Differentiation_1(x,y);
figure(1);
clf;
plot(x,y,a,b);