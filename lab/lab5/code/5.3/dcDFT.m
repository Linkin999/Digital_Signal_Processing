function X=dcDFT(x)
            %index start form 1 in matlab while index start from 0 in formula 
            x0=x(1:2:length(x));%even part; 
            x1=x(2:2:length(x));%odd part;
            X0=DFTsum(x0);
            X1=DFTsum(x1);
            X=zeros(1,length(x));
            for k=1:length(x)/2
                X(k)=X0(k)+exp(-1j*2*pi/length(x)*(k-1))*X1(k);
            end
            for k=1:length(x)/2
                X(k+length(x)/2)=X0(k)-exp(-1j*2*pi/length(x)*(k-1))*X1(k);
            end
end