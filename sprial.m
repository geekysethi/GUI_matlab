clc
clear all
close all
for i=1:100
a=4;
theta=0:.01:i*pi;
r=a*(theta);
x=r.*cos(theta);
y=r.*sin(theta);
plot(x,y);
end
% figure(11);
% theta=0:.001:100*pi;
% r=a*(theta);
% 
% x=r.*cos(theta);
% y=r.*sin(theta);
% plot(x,y);
