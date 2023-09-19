function waves=gen_wave3(tone,scale,noctave,rising,rythm,fs)
    freq=261.5; %initial the value of freq to C
    switch scale
        case 'C'
            freq=freq*power(2,0);
        case 'D'
            freq=freq*power(2,1/6);
        case 'E'
            freq=freq*power(2,1/3);
        case 'F'
            freq=freq*power(2,5/12);
        case 'G'
            freq=freq*power(2,7/12);
        case 'A'
            freq=freq*power(2,9/12);
        case 'B'
            freq=freq*power(2,11/12);
    end
    
     switch tone
        case 0
             freq=0;
        case 1
            freq = freq*power(2,0);
        case 2
            freq=freq*power(2,1/6);
        case 3
            freq=freq*power(2,1/3);
        case 4
            freq=freq*power(2,5/12);
        case 5
            freq=freq*power(2,7/12);
        case 6
            freq=freq*power(2,9/12);
        case 7
            freq=freq*power(2,11/12);
    end
    freq=freq*power(2,noctave);
    freq=freq*power(2,rising/12);
    t=linspace(0,rythm,fs*rythm);
    
    %harmonic
     k1=[0.1262 0.0152 0.0062 0.0044 0.0059 0.0043 0];
    
    
    waves=0;
   
   for i =1:length(k1)
    waves=waves+k1(i)*sin(2*pi*i*freq*t).*exp(-2*t/rythm);
   end
end