wp=0.3*pi;
ws=0.2*pi;
wc=(wp+ws)/(2*pi);
disp('cutoff freq= ');disp(wc);
tr_w=(wp-ws);
M=ceil(6.6*pi/tr_w);
if(rem(M,2)==0)
    M=M+1;
end
disp('filter length= ');disp(M);
n=0:M-1;
wind=window(@hamming,M);
b=fir1(M-1,wc,'high',wind);
% disp('filter coeff= ');disp(b);
figure(1);
freqz(b,1);
w=wp:pi/255:pi;
Hp=freqz(b,1,w);
Hpmag=abs(Hp);
Hpdb=20*log10(Hpmag);
Ap=max(Hpdb);
disp('passband ripple= ');
disp(Ap);
w=0:pi/255:ws;
Hs=freqz(b,1,w);
Hsmag=abs(Hs);
Hsdb=20*log10(Hsmag);
As=max(Hsdb);
disp('stopband attenuation(db)= ');
disp(As);

