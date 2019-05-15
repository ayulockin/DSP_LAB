clc;
clear all;
close all;

syms w n z;
r = 2;

x1 = 5^n;
zx1 = ztrans(x1)
izx1 = simplify(iztrans(zx1))

x2 = (r^n)*sin(w*n);
zx2 = ztrans(x2)
izx2 = simplify(iztrans(zx2))

x3 = [1 0 3 -1 2];
zx3 = ztransform(x3, 0)
