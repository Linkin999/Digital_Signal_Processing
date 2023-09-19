function X=fft_stage(x)
    N=length(x);
    k=0:N/2-1;
    if N==2
        X=FFT2(x);
    else
        x0=x(1:2:N);
        x1=x(2:2:N);
        X0=fft_stage(x0);
        X1=fft_stage(x1);
        wkn=exp(-1j*2*pi*k/N);
        X=[(X0+X1.*wkn) (X0-X1.*wkn)];
    end

end