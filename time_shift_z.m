clc;
clear all;
close all;

% Z{x(n-m)} = z^-mX(z)
syms z;

xn = [1 2 4 5 6];
Xz = ztransform(xn, 3)
m = 3;
RHS = (z^-m)*Xz

LHS = ztransform(xn, 0)
