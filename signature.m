function [S] = signature(I,xb,yb)
    precision=10;
    unitAngle=2*pi/precision;
    S=zeros(precision);
    for i=0:precision-1
        S(i)=distCentre(I,xb,yb,unitAngle*i);
    end
end