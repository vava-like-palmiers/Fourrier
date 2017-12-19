
    img = imread('dbq/apple-1.gif');
    
    [S, X, Y] = signature(img,50);
    
    M=[Y X];
    img = insertMarker(img, M);
    
    pos = [xb yb];
    img = insertMarker(img, pos);
    
    figure;
    imshow(img);
    
    drawnow();


