function afficher (ImBase, data, Yrecall, Ymoy, precision)

    h = 3;
    l = 6;

    subplot(h, l, [1,3]);
    imshow(ImBase);

    [xb,yb] = baricentre(ImBase);
    [S,X,Y] = signature(ImBase, precision);

    ImBaseMarque= insertMarker(double(ImBase), [[xb;Y] [yb;X]]); 

    subplot(h, l, [4,6]);
    imshow(ImBaseMarque);
    
    for i=l+1:2*l
        subplot(h, l, i);
        imshow(data{i-l, 2});
    end
    
    subplot(h, l, [13,15]);
    plot(Yrecall);
    
    %subplot(h, l, [16,18]);
    %plot(Ymoy);

end