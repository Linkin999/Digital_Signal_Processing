function output=FIRfilter(x,theta)
            h=[1 -2*cos(theta) 1];
            output=conv(x,h);
end
