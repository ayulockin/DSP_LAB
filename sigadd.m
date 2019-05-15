function [y, n] = sigadd(x1, x2, n1, n2)
%   Addition of two sequence given there starting index

y = 0;
num_zeros = abs(n1-n2); 

if n1<=n2
    %zero pad num_zeros before x1
    X1 = [zeros(1, num_zeros), x1];
    %zero pad num_zeros after x2
    X2 = [x2, zeros(1, num_zeros)];
else
    %zero pad num_zeros after x1
    X1 = [x1, zeros(1, num_zeros)];
    %zero pad num_zeros before x2
    X2  = [zeros(1, num_zeros), x2];
end

y = X1+X2;
n = max(n1, n2)

end

