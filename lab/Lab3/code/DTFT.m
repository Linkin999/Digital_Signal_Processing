function [X,w]=DTFT(x,n0,dw)
    w=-pi:dw:pi;
    X=zeros(1,length(w));
 for i=1:length(w)
     for j=1:length(x)
         X(i)=X(i)+x(j)*exp(-sqrt(-1)*w(i)*(j+n0-1));
     end
 end
