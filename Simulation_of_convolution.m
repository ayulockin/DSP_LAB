clc;
clear all;
close all;

x_n = input('Enter system excitation: ');
nx = input('Starting index: ');
xe = nx + length(x_n) - 1
n_x = nx:xe
stem(n_x, x_n) 
% 
% hn = input('Enter system input response');
% nh = input('Starting index: ');



