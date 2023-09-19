function freq = tone2freq2(tone,scale,noctave,rising)
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
end