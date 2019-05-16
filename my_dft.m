function [Xk] = my_dft(xn, N)
%   Function to evaluate N point DFT of a given sequence.
l = length(xn);
if N>=l
    x1 = [xn zeros(1, (N-l))];
else
    error('N is smaller than length of xn. Aliasing will occur')
end

for k=0:N-1
    for n=0:N-1
        p = exp(-1j*2*pi*n*k/N);
        x2(k+1, n+1) = p;
        
    end
end

disp(x1)
disp(x2)
Xk = x1*x2;
end 

