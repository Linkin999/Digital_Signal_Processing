function h=LPFtrunc(N)
            wc=2.0;
            n=0:N-1;
            h=wc/pi*sinc(wc/pi*(n-(N-1)/2));
end