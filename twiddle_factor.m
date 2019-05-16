clc;
clear all;
close all;

N = input('Enter: ');
k = input('Range: ');

Wn = exp(-1j*2*pi/N);

LHS = Wn^(k+N/2)
RHS = -(Wn^k)


if abs(real(LHS)-real(RHS))<0.01 && abs(imag(LHS)-imag(RHS))<0.01
    disp('Symmetric Proved')
else
    disp('Not proved')
end

LHS = Wn^k
RHS = Wn^(k+N)

if abs(real(LHS)-real(RHS))<0.01 && abs(imag(LHS)-imag(RHS))<0.01
    disp('Periodic Proved')
else
    disp('Not proved')
end


