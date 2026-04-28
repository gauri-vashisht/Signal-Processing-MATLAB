clc;
clear;

N = 4;
j = sqrt(-1);
xn = [1 1 2 3];
xk = zeros(1,N);

for k = 0:N-1
    for n = 0:N-1
        xk(k+1) = xk(k+1) + xn(n+1)*exp(-j*2*pi*k*n/N);
    end
end

disp("DFT Sequence is")
disp(xk)
disp("Magnitude sequence is")
magxk = abs(xk)

wk = 0:N-1;
subplot(2,1,1)
stem(wk,magxk)
title("Magnitude Spectrum")
xlabel("k")
ylabel("|X(k)|")

phaxk = angle(xk);
subplot(2,1,2)
stem(wk,phaxk)
title("Phase Spectrum")
xlabel("k")
ylabel("Phase (radians)")