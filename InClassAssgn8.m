i=1;
f=@(y)(-y+1);
y=0;
h=0.1;
Euler={[] [] [] []};
x={[] [] [] []};
while(i<4) 
    x{i}=0:h*10^(1-i):1;
    Euler{i}=Euler_Method(f,h*10^(-i),x{i}, y);
    i=i+1;
end
plot(x{1},Euler{1},x{2},Euler{2},x{3},Euler{3});