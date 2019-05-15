clc;
clear all;
close all;

x1 = input('Enter the sequence: ');
x1s = input('Enter starting Index: ');
xz1 = ztransform(x1, x1s)

x2 = input('Enter the second sequence: ');
x2s = input('Enter starting Index: ');
xz2 = ztransform(x2, x2s)

a = input('Enter a: ');
b = input('Enter b: ');

[X, n] = sigadd(a*x1, b*x2, x1s, x2s);
rhs = simplify(ztransform(X, n))
lhs = simplify(a*xz1 + b*xz2)

if rhs == lhs
    disp('Linearity Satisfied')
else 
    disp('Issue')
end
