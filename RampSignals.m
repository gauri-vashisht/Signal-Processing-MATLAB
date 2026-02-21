% unit ramp continuous
t=-10:0.01:10;
ramp=t.*(t>=0);
subplot(2,2,1);
plot(t,ramp,LineWidth=3);
title('Unit Ramp Function');
xlabel('Time (s)');
ylabel('Amplitude');

% unit ramp discrete
n=-10:10;
ramp=n.*(n>=0);
subplot(2,2,2);
stem(n,ramp,LineWidth=3);
title('Unit Ramp Function');
xlabel('N');
ylabel('Amplitude');

%ramp of slope m, discrete 
function rd(no,m)
n=-10:10;
rampd=m*(n-no).*((n-no)>=0);
subplot(2,2,3);
stem(n,rampd,LineWidth=3);
title('Custom Ramp Function Discrete');
xlabel('N');
ylabel('Amplitude');
end
rd(2,6);

%ramp of slope m, continuous 
function rc(to,m)
t=-10:10;
rampd=m*(t-to).*((t-to)>=0);
subplot(2,2,4);
plot(t,rampd,LineWidth=3);
title('Custom Ramp Function Continuous');
xlabel('T');
ylabel('Amplitude');
end
rc(2,-8);
