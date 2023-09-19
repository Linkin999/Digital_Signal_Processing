function [y]=difference1(x)
    y=zeros(1,length(x)+1);
    y(1)=x(1);
    y(length(x)+1)=-x(length(x));
    for i=2:length(x)
        y(i)=x(i)-x(i-1);
    end

