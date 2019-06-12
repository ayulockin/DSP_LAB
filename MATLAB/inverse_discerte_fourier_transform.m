clear all;
close all;
x = [5 -1 1 -1];
disp("Aritra");
for n = 1:length(x)
    s = 0;
    for k = 1:length(x)
        s =s+ x(k)*exp((1j)*(2*pi/length(x))*(k-1)*(n-1));
    end
    disp(real(s/length(x)));
end
disp("Matlab");
X = ifft(x);
disp(X);