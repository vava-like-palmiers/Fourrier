function afficher (ImBase, data, Yrecall, Ymoy, precision)

    h = 3;
    l = 6;

    subplot(h, l, [1,3]);
    imshow(ImBase);
    title('Image Requete');

    [xb,yb] = baricentre(ImBase);
    [S,X,Y] = signature(ImBase, precision);

    ImBaseMarque= insertMarker(double(ImBase), [[yb;Y] [xb;X]]); 

    subplot(h, l, [4,6]);
    imshow(ImBaseMarque);
    title('Baricentre + Signature');
    
    for i=l+1:2*l
        subplot(h, l, i);
        imshow(data{i-l, 2});
        title(data{i-l,1});
    end
    
    subplot(h, l, [13,15]);
    plot(Yrecall*100);
    xlim([0 19]);
    title('Courbe Recall');
    
    subplot(h, l, [16,18]);
    plot(Ymoy*100);
    xlim([0 19]);
    title('Courbe Moyenne');

end