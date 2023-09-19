function X=FFT2(x)
            %x的长度为2
            X=zeros(1,2);
            %注意index
            X(1)=x(1)+x(2);
            X(2)=x(1)-x(2);
end