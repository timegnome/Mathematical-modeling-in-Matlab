f=@(x)sin(x);
i=1;
while(i<4) 
    x=0:1/(100*10^(i-1)):1;
    y=f(x);
    Trap(i)=Trapezoidal_Rule(x,y);
    Mid(i)=MidPoint_Rule(x,y);
    Simpson(i)= Simpson_Rule(x,y);
    i=i+1;
end