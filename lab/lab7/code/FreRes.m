function [magnitude,phase] = FreRes(num,den)
            w=-pi:0.01:pi;
            num1=0;den1=0;
            for i =1:length(num)
                num1=num1+num(i).*exp(1i*w*(-i+1));
            end
            for i=1:length(den)
                den1=den1+den(i).*exp(1i*w*(-i+1));
            end
            magnitude=abs(num1./den1);
            phase = angle(num1./den1);
end