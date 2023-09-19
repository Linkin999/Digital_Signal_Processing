function [I] = integ2(N)
dt=1/N;
t=0:dt:1-1/N;
I=sum(exp(t)*dt);
