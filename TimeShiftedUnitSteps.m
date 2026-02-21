%unit step discrete
function usd(no) %no =by how much u want to time shift
n=-10:10;
ud=(n-no)>=0;
subplot(1,2,1);
stem(n,ud,LineWidth=3);
end;
usd(2);

%unit step continuous
function usc(to)
t=-10:0.01:10;
uc=(t-to)>=0;
subplot(1,2,2);
plot(t,uc,LineWidth=3);
end;
usc(2);