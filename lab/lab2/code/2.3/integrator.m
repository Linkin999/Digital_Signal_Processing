function [y]=integrator(x)
y(1)=x(1);
for i=2:length(x)
    y(i)=x(i)+y(i-1);
end