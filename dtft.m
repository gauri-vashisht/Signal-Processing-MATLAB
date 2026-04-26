clear;
clc;

n = -10:10;
x = (n >= -2) & (n <= 2);
subplot(2,1,1);
stem(n, x);
title('Discrete Rectangular Signal');

w = -2*pi:0.01:2*pi;
for k = 1:length(w)
    X(k) = sum(x .* exp(-1j*w(k)*n));
end
subplot(2,1,2);
plot(w, abs(X));

title('DTFT Magnitude');
xlabel('frequency');