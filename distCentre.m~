function [d, a, b] = distCentre(I,xb,yb,angle)
    i=xb;
    j=yb;
    k=0;
    d=0;
    
    while i<size(I,2) && i>0 && j<size(I,1) && j>0
        [x,y]=coordCart(xb,yb,angle,k);
        i=round(x);
        j=round(y);
        
        if i>=size(I,2) || i<=0 || j>=size(I,1) || j<=0
            return;
        end
        
        if I(i,j)==0
            d=pdist([xb,yb;i,j],'euclidean');
            a=i;
            b=j;
            return;
        end
        
        k=k+1;
    end
    
end