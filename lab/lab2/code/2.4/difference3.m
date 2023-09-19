function [y]=difference3(x)
    y=zeros(1,length(x)+1);
    y(1)=x(1);
    y(length(x)+1)=-x(length(x));
    for i=2:length(x)
        y(i)=x(i)-0.5*x(i-1);
    end