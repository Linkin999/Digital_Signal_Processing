function y=IIRfilter(x,theta,r)
        y(1)=(1-r)*x(1);
        y(2)=(1-r)*x(2)+2*r*cos(theta)*y(1);
        for i=3:length(x)
            y(i)=(1-r)*x(i)+2*r*cos(theta)*y(i-1)-r*r*y(i-2);
        end
end
