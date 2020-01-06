clc;
clear all;
close all;
%cont and discrete sine wave

% amp=input('Enter amplitude: ');
% freq=input('Enter frequency: ');
% phase=input('Enter phase: ');
% fs=input('Enter sampling frequency: ');
% len=input('Enter no. of samples');
amp=1;
freq=0.5;
phase=0;
fs=10;
len=50;
xx=0:0.1:2*pi;
x=0:len;
figure(1);
stem(x,amp*sin(2*pi*x*(freq/fs) +((pi/180)*phase)));