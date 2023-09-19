function freq = tone2freq(tone, noctave,rising)
freq=440;
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
        