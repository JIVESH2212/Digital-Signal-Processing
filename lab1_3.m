clc;
close all;
clear all;
it=input('Enter initial time: ');
ft=input('Enter final time: ');
st=input('Enter starting time: ');

figure(1);
% 
% x=ini:ft;
% y=0;
% subplot(3,1,1)
% stem(x,y)+stem( st,1);
x=it:ft;
subplot(3,1,1)

%b=zeros(size(x));
%b(st-it+1)=1;
b=(x==st);
stem(x,b);
subplot(3,1,2);

% c=zeros(size(x));
% c( st-it+1:ft-it+1)=1;
c=(x>=st);
stem(x,c);

subplot(3,1,3);
% d=zeros(size(x));
% d(st-it+1:ft+1-it)=0:ft+1-st-1; %st-it+1-st-1 -it:-starts from 0
d=(x-st).*c;
stem(x,d)

