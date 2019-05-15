clear all;
close all;
x = [1 1 2 1];
disp("Aritra");
for k = 1:length(x)
    s = 0;
    for n = 1:length(x)
        s =s+ x(n)*exp(-(1j)*(2*pi/length(x))*(k-1)*(n-1));
    end
    disp(real(s))
end
disp("Matlab");
X = fft(x);
disp(X);