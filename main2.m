precision = 200;
premiersCoeffs = 50;

%chargement base de donnée

disp('loading database db...')

[im_db, label_db] = tests('./db/');

disp('loading database dbq...')

[im_dbq, label_dbq] = tests('./dbq/');

disp('loading complete')


for im=1:numel(im_dbq)
   distEuc=cell(1);
   %calculer descripteur image actu
   DescBase = descripteur(im_dbq{im}, premiersCoeffs, precision);
   
   %parcours des images db
   for i = 1:numel(im_db)
       %calcul descripteur images db
       DescReq = descripteur(im_db{i}, premiersCoeffs, precision);
       distEuc{i} = norm(DescReq-DescBase);
   end
   
   data = [label_db; im_db; distEuc];
   data=transpose(data);
   data = sortrows(data, 3);
   
   Y = recall(data,label_dbq{im});
   afficher (im_dbq{im}, data, Y, 0, precision);
   
   uiwait;
end
    
