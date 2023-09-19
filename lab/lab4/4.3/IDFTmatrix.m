function B=IDFTmatrix(N)
    B=zeros(N,N);
    for k=1:N
        for n=1:N
            B(k,n)=1/N*exp(1i*2*pi*(k-1)*(n-1)/N);
        end
    end
end