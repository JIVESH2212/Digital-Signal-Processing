m= input('Enter numerator: ');
num=ones(1,m);
denom=m;
w=-pi:pi/256:pi;
H=freqz(num,denom,w);
figure(1)
plot(w,abs(H)),title( 'frequency resp');
figure(2)
plot(w,angle(H)),title ('phase response');