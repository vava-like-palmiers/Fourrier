function [S, X, Y] = signature(I, p)
    precision=p;
    unitAngle=2*pi/precision;
    [xb,yb]=baricentre(I);
    
    S=zeros(precision,1);
    X=zeros(precision,1);
    Y=zeros(precision,1);
    for i=1:precision
        [S(i), X(i), Y(i)]=distCentre(I,xb,yb,unitAngle*i);
    end
end