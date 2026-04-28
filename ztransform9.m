clc
clear

b=[1 0]
a=[1 -0.9]
subplot(2,2,1)
zplane(b,a)

w=-4*pi:4*pi
x=freqz(b,a,w)
T=abs(x)
anglex=angle(x)

subplot(2,2,2)
plot(w/pi,T)
title("Magnitude Plot")
xlabel("normalized frequency")
ylabel("Magnitude")

subplot(2,2,3)
plot(w/pi,anglex)
title("Phase plot")
xlabel("normalized frequency")
ylabel("phase degree")
