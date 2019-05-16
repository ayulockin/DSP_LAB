function [xn] = my_idft(xk, N)
%   Function to evaluate IDFT of a given X(k).

l = length(xk);
if N>=l
    xk1 = [xk zeros(1, (N-l))];
else
    error('N is smaller than length of xk. Aliasing will occur')
end

for k=0:N-1
    for n=0:N-1
        p = exp(1j*2*pi*k*n/N);
        xk2(k+1, n+1) = p; 
    end
end

xn = (xk1*xk2)/N;
end

