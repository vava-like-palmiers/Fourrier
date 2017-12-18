
    img = imread('dbq/apple-1.gif');
    [xb,yb] = baricentre(img);
    
    [S, X, Y] = signature(img, xb, yb,50);
    
    M=[Y X]
    img = insertMarker(img, M);
    
    pos = [xb yb];
    img = insertMarker(img, pos);
    
    figure;
    imshow(img);
    
    drawnow();


