n = 1:100;
f = 10;
xn = zeros(1,length(n));
count = 0;
for i = n
    xn(1,i) = count;
    count = count+1;
    if mod(i,10) == 0
        count = 0;
    end
end
stem(n,xn);