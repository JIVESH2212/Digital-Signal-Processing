
n=input('Enter N ');
figure(1)
w=-pi:pi/256:pi;
subplot(2,1,1)
w1=window(@rectwin,n);
w2=window(@bartlett,n);
w3=window(@blackman,n);
w4=window(@hamming,n);
w5=window(@hann,n);
figure(1)
plot(1:n,[w1,w2,w3,w4,w5]),title('time domain response');
legend('rectangle' ,'bartlett','blackman','hamming','hanning');
subplot(2,1,2)
plot(w,abs(freqz(w1,1,w)),w,abs(freqz(w2,1,w)),w,abs(freqz(w3,1,w)),w,abs(freqz(w4,1,w)),w,abs(freqz(w5,1,w))),title('frequency domain response');
legend('rectangle' ,'bartlett','blackman','hamming','hanning');