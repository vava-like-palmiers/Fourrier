function Vdescr =  descripteur(I,k,p)
    [S,X,Y]=signature(I,p);
    Vdescr=normaliseSignature(k,S);
    
end