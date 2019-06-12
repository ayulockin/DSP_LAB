clear all;
N = 5;
n = 1:N;
f = 0.2;
a = input('Enter a: ');
x1 = sin(2*pi*f*n);
x2 = a.^n;
subplot(5,1,1);
stem(n,x1);
ylabel('amplitude');
xlabel('number of samples--->');
title('discrete sin signal');
subplot(5,1,2);
stem(n,x2);
ylabel('amplitude');
xlabel('number of samples--->');
title('discrete exp signal');
subplot(5,1,3);
stem(n,x1+x2);
ylabel('amplitude');
xlabel('number of samples--->');
title('summation signal');
subplot(5,1,4);
stem(n,abs(x2-x1));
ylabel('amplitude');
xlabel('number of samples--->');
title('subtraction signal');
subplot(5,1,5);
stem(n,x1.*x2);
ylabel('amplitude');
xlabel('number of samples--->');
title('multiplication signal');