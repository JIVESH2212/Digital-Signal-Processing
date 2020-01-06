%accumulator
%y(n)=x(n)+y(n-1)
%y(z)=x(z)+ z^-1y(z)|| y(z)/x(z)=1/(1-z^-1)
%s(n)= sum(k=-inf:n)[h(k)]
num=input('Enter numerator: ');
den=input('Enter denominator: ');
% num=1;
% den=[1,-1];
[z,p,k]=tf2zpk(num,den);
figure(1);

subplot(4,1,1);
zplane(z,p);

stability=isstable(num,den);
[h,n]=impz(num,den);

subplot(4,1,2);
stem(n,h);
ustep=[];
f=2;
ustep(1:size(n))=cumsum(h);
% for i=1:length(h)
%     ustep(i)=sum(h(1:i));
%     
% end
subplot(4,1,3);
stem(n,ustep);


if stability~=0
    w=-pi:pi/256:pi;
    disp('stable system ');
    [h,n]=freqz(num,den,w);
    figure(2);
    plot(w,abs(h));
    plot(w,angle(h));
    stem(n,h)

end





