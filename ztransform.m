function [xz] = ztransform(xn, start)
%   X(z) = sum(x(n)*z^-n)

syms z;
n = length(xn);
xz = 0;
if start == 0
    start_index = 0;
    for i=1:n
        xz = xz+ xn(i)*z^(-(start_index));
        start_index = start_index + 1;
    end
elseif start ~= 0
    start_index = -start;
    for i=1:n
        xz = xz+ xn(i)*z^(-(start_index));
        start_index = start_index + 1;
    end
end
        
end

