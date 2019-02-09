x=0; n=10; s=exp(x);
figure(1);
clf()
absErr = zero(1,n); RelErr = zero(1,n);
Sn=1;
for i=1:n; Sn.= Sn+x.^i./factorial(i)
    absErr(i)= abs(Sn=s)
    RElErr(i)= absErr(i)=abs(s);
end