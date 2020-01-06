num=zeros(1,241);
num(1)=1;
num(241)=0.1;
denom=zeros(1,241);
denom(1)=1;
denom(241)=-0.8;
w=-pi:pi/256:pi;
h=freqz(num,denom,w);
figure(1)
subplot(2,1,1)
plot(w,abs(h));
subplot(2,1,2)
plot(w,angle(h));
figure(2)
[h,t]=impz(num,denom);
plot(t,h);
