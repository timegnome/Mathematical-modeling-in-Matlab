x=linspace(-1,1,101);
clf();
figure(1);
title('Taylor Approx')
for n=1:6
    subplot(3,2,n)
    plot(x,Hw1(x,n));
    ylabel(['MaxAbsError',num2str(max(abs(Hw1(x,n)-exp(x))))])
    xlabel(['ReltError',num2str((abs(Hw1(x,n)-exp(x)))/abs(Hw1(x,n)))])
end
