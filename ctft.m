clear; 
clc;
t = -10:0.01:10;
rect = (t >= -2) & (t <= 2);
subplot(2,1,1);
plot(t, rect);
title('Rectangular Pulse');

% CTFT
f = -5:0.01:5;
for k = 1:length(f)
    x(k) = trapz(t, rect .* exp(-1j*2*pi*f(k)*t));
end
subplot(2,1,2);
plot(f, abs(x)); 
title('CTFT (Magnitude)');
xlabel('Frequency');