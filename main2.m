precision = 10;
premiersCoeffs = 12;

%chargement base de donnée

disp('loading database db...')

[im_db, label_db] = tests('./db/');

disp('loading database dbq...')

[im_dbq, label_dbq] = tests('./dbq/');

disp('loading complete')

im = 1;    

   %calculer descripteur image actu
   DescBase = descripteur(im_dbq{im}, premiersCoeffs, precision);
   
   %parcours des images db
   for i = 1:numel(im_db)
       %calcul descripteur images db
       DescReq = descripteur(im_db{i}, premiersCoeffs, precision);
       distEuc = norm(DescReq-DescBase)
   end
   
   map = table(label_db, im_db, distEuc);
   
 
    
