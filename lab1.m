clc;
clear all;
close all;
%cont and discrete sine wave

amp=input('Enter amplitude: ');
freq=input('Enter frequency: ');
phase=input('Enter phase: ');
fs=input('Enter sampling frequency: ');

% amp=1
% freq=0.5
% phase=0
% fs=10
%xx=0:0.1:2*pi
x=0:1/fs:5/freq;
figure(1);

subplot(2,1,1);
xlabel('time');
ylabel('amplitude');
plot(x,amp*sin(2*pi*x*freq +((pi/180)*phase)));
subplot(2,1,2);
stem(x,amp*sin(2*pi*x*freq +((pi/180)*phase)));