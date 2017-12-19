precision = 10;
premiersCoeffs = 12;

img_db_path = './dbq/';
img_db_list = glob([img_db_path, '*.gif']);
img_db = cell(1);
label_db = cell(1);
fd_db = cell(1);
%figure();
%for im = 1:numel(img_db_list);
    
im = 1;
    img_db{im} = logical(imread(img_db_list{im}));
    label_db{im} = get_label(img_db_list{im});
    
    %calculer descripteur image actu
    
    %calcul descripteur 
    [xb, yb] = baricentre(img_db{im});
    [S, X, Y] = signature(img_db{im}, xb, yb, precision);
    Desc = normaliseSignature(premiersCoeffs, S);
    
    [recall, precision] = tests(Desc, precision, premiersCoeffs);  
    
    
%end