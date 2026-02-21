%unit impulse signal continuous
function ic(to);
t=-10:0.01:10;
ic=(t-to)==0;
subplot(1,2,1);
plot(t,ic,LineWidth=3);
title('Unit Impulse Discrete Function');
xlabel('n');
ylabel('Amplitude');
end;
id(3);

%unit impulse signal discrete
function id(no);
n=-10:10;
id=(n-no)==0;
subplot(1,2,2);
stem(n,id,LineWidth=3);
title('Unit Impulse Continuous Function');
xlabel('n');
ylabel('Amplitude');
end;
ic(3);