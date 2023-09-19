function [y]=filter1(x)
y=zeros(1,length(x)+1);
for i = 2:length(x)+1
    y(i)=0.8*y(i-1)+0.2*x(i-1);
end