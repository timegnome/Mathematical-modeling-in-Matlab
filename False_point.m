f= inline('tan(pi*x)-6');
i=2; p0=0; p1=0.48;
Nit=20; Tolx= 10^(-4); Toly= 10^(-6);
table=[];
while i<=Nit
    p=p1-f(p1)*(p1-p0)/(f(p1)-f(p0));fp=f(p);fa=f(p1);
    table=[table;i p0 p1 p fp];
    if(abs(p-p1)<Toly)||(abs(p1-p0)<Tolx)
        sol=p;
        break;
    else
        if fa*fp<0
            p0=p;
        else
            p1=p;
        end
    end
    i=i+1;
end