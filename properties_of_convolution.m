clc;
clear all;
close all;

x1_n = input('Enter an input sequence: ');
nx1 = input('Enter starting index: ');

h1_n = input('Enter an input sequence: ');
nh1 = input('Enter starting index: ');

h2_n = input('Enter an input sequence: ');
nh2 = input('Enter starting index: ');

% COMMUTATIVE PROPERTY
% x(n)*h(n) = h(n)*x(n)

y1_n = conv(x1_n, h1_n);
y2_n = conv(h1_n, x1_n);

if y1_n==y2_n
    disp('Commutative property verified')
else
    disp('Issue')
end

% ASSOCIATIVE PROPERTY
% x(n)*(h1(n)*h2(n)) = (x(n)*h1(n))*h2(n)

temp1_y = conv(h1_n, h2_n);
y1_n = conv(x1_n, temp1_y);
temp2_y = conv(x1_n, h1_n);
y2_n = conv(temp2_y, h2_n);

if y1_n==y2_n
    disp('Associative property verified')
else
    disp('Issue')
end    

% DISTRIBUTIVE PROPERTY
% x(n)*(h1(n)+h2(n)) = x(n)*h1(n) + x(n)*h2(n)
l1 = length(h1_n);
l2 = length(h2_n);
if abs(l1-l2) ~= 0
    if l1>l2
        h2_n = [h2_n, zeros(1, l1-l2)];
    else
        h1_n = [h1_n, zeros(1, l2-l1)];
    end
    sum_h = h1_n+h2_n;
else 
    sum_h = h1_n+h2_n;
end

y1_n = conv(x1_n, sum_h);
y2_n = conv(x1_n, h1_n) + conv(x1_n, h2_n);

if y1_n==y2_n
    disp('Distributive property verified')
else
    disp('Issue')
end

