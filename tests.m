% recall et precision sont des matrices  de tailles identiques num_ref X 19 
% où num_ref est le nombre d'objets de référence (le nombre d'images requêtes) 
% et 19 est le nombre d'images à retrouver pour chaque requête

function [recall, precision] = tests(DescImReq, precision, premiersCoeffs)

img_db_path = './db/';
img_db_list = glob([img_db_path, '*.gif']);
img_db = cell(1);
label_db = cell(1);
fd_db = cell(1);
%figure();

%mapObj = containers.Map('KeyType','char','ValueType','double');

for im = 1:numel(img_db_list);
    
    img_db{im} = logical(imread(img_db_list{im}));
    label_db{im} = get_label(img_db_list{im});
    
    %calcul descripteur 
    [S, X, Y] = signature(img_db{im}, precision);
    Desc = normaliseSignature(premiersCoeffs, S);
    
    D = norm(Desc-DescImReq);
    
    %clf;imshow(img_db{im});
    %disp(label_db{im}); 
    %drawnow();
    
end