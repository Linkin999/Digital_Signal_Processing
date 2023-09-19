function [I] = integl(N)
dt=2*pi/N;
t=0:dt:2*pi-dt;
I=sum(sin(5*t).*sin(5*t)*dt);


