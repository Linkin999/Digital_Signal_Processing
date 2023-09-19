function [y]=filter2(x)
y=zeros(1,length(x)+1);
y(2)=y(1)+x(1)/3;
y(3)=y(2)+x(2)/3;
y(4)=y(3)+x(3)/3;
for i= 5: length(x)+1
    y(i)=y(i-1)+(x(i-1)-x(i-4))/3;
end
