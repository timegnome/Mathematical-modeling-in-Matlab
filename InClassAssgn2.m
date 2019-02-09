f= inline('tan(pi*x)-6');
i=1; a=0; b=0.48;
Nit=20; Tolx= 10^(-4); Toly= 10^(-4);
table=[];
while i<=Nit
    P=(a+b)/2;fp=f(P);fa=f(a);
    table=[table;i a b P fp];
    if(abs(fp)<Toly)||((b-a)/2<Tolx)
        sol=P;
        %plot(table);
        break;
    else
        if fa*fp<0
            b=P;
        else
            a=P;
        end
    end
    i=i+1;
end