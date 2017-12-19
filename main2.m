precision = 10;
premiersCoeffs = 12;

[im_db, label_db] = tests('./db/');
[im_dbq, label_dbq] = tests('./dbq/');

im = 1;

    %calcul descripteur im dbq
    [xb, yb] = baricentre(img_dbq{im});
    [S, X, Y] = signature(img_dbq{im}, xb, yb, precision);
    Desc = normaliseSignature(premiersCoeffs, S);
    
   %parcours des images db
   for i = 1:numel(im_db)
       %calcul descripteur images db
      [xb_q, yb_q] = baricentre(img_db{i});
      [S_q, X_q, Y_q] = signature(img_db{i}, xb_q, yb_q, precision);
      Desc = normaliseSignature(premiersCoeffs, S_q);
   end
   
   
 
    
