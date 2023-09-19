function X=DFTsum(x)
    N=length(x);
    X=zeros(1,N);
    for k =1:N
        for n=1:N
            %注意：matlab中向量第一个元素的index是1，而公式中第一个index是0，所以需要减1
            X(k)=X(k)+x(n)*exp(-1i*2*pi*(k-1)*(n-1)/N);
        end
    end
end