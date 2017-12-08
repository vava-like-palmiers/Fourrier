function d = distCentre(I,xb,yb,angle)
    i=xb;
    j=yb;
    k=0;
    
    while i>size(I,2) && i>=0 && j>size(I,1) && j>=0
        [x,y]=coordCart(xb,yb,angle,k);
        i=round(x);
        j=round(y);
        k=k+1;
        if I(i,j)==1
            d=pdist([xb,yb;i,j],'euclidean');
            return;
        end
    end
end