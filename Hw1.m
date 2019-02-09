function Approx = Hw1( X,N )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
if(N<1)
    disp('Error, N>=1');
else
    y = 0;
    for B = 0:N
        y = y + X.^B.*1./factorial(B);
    end
Approx=y;

end

