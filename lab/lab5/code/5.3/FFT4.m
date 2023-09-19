function X=FFT4(x)
            %x的长度为4
            X=zeros(1,length(x));
            x0=x(1:2:length(x));
            x1=x(2:2:length(x));
            X0=FFT2(x0);
            X1=FFT2(x1);
            for k=1:length(x)/2
                X(k)=X0(k)+exp(-1j*2*pi/length(x)*(k-1))*X1(k);
            end
            for k=1:length(x)/2
                X(k+length(x)/2)=X0(k)-exp(-1j*2*pi/length(x)*(k-1))*X1(k);
            end
end