yprime=@(t,y) -(y+1)*(y+3);
h=0.2;
x=0:h:2;
y=-2;
f=@(t)-3+2*(1+exp(-2*t))^(-1);
Mid_Euler=Midpoint_Euler(yprime,h,x,y);
Mod_Euler=Modified_Euler(yprime,h,x,y);
Heuns_Euler1=Heuns_Euler(yprime,h,x,y);
Fourth_Euler=Fourth_Der_Euler(yprime,h,x,y);
Mid_Euler=transpose(Mid_Euler);
Mod_Euler=transpose(Mod_Euler);
Heuns_Euler1=transpose(Heuns_Euler1);
Fourth_Euler=transpose(Fourth_Euler);