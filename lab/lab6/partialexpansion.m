function [y,x]=partialexpansion(num,den)
            [r,p,k]=residue(num,den);
            y=r;
            x=p;
            
end