precision = 150;
premiersCoeffs = 150;

%chargement base de donnée

disp('loading database db...')

[im_db, label_db] = tests('./db/');

disp('loading database dbq...')

[im_dbq, label_dbq] = tests('./dbq/');

disp('loading descriptor calcul');

sizeDB=numel(im_db);
sizeDBQ=numel(im_dbq);
DescReq=cell(1);
totRecall = zeros(sizeDB,1);

%parcours des images db
for i = 1:sizeDB
    %calcul descripteur images db
    DescReq{i} = descripteur(im_db{i}, premiersCoeffs, precision);
end

disp('loading complete');

for im=1:sizeDBQ
   DescBase = descripteur(im_dbq{im}, premiersCoeffs, precision);
   distEuc=cell(1);
   %parcours des images db
   for i = 1:sizeDB
       %calcul descripteur images db
       distEuc{i} = norm(DescReq{i}-DescBase);
   end
   
   data = [label_db; im_db; distEuc];
   data=transpose(data);
   data = sortrows(data, 3);
   actuRecall = recall(data,label_dbq{im});
   
   totRecall = totRecall + actuRecall;
   
   afficher (im_dbq{im}, data, actuRecall, totRecall/i, precision);
   
   uiwait;
end
    
