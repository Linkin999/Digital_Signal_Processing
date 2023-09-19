function [y]=differentiator(x)
      y(1)=0;
     for i=2:length(x)
         y(i)=x(i)-x(i-1);
     end