clc;
clear all;
close all;

xn = [1 0.75 0.5 0.25 1 0.75 0.5 0.25];
N = 8;

Xk = my_dft(xn, N)
xn = my_idft(Xk, N)