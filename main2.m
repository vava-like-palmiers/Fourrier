precision = 10;
premiersCoeffs = 12;

[im_db, label_db] = tests('./db/');
[im_dbq, label_dbq] = tests('./dbq/');

im = 1;    

   %calculer descripteur image actu
   DescBase = descripteur(im_dbq{i}, premiersCoeffs, precision);
   
   %parcours des images db
   for i = 1:numel(im_db)
       %calcul descripteur images db
       DescReq = descripteur(im_db{i}, premiersCoeffs, precision);
       distEuc = norm(DescReq-DescBase);
   end
   
   
 
    
