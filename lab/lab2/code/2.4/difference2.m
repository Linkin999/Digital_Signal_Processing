function [y]=difference2(x)
y=zeros(1,length(x)+1);
for i=2:length(x)+1
    y(i)=x(i-1)+0.5*y(i-1);
end