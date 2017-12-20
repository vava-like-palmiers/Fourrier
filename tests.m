% recall et precision sont des matrices  de tailles identiques num_ref X 19 
% où num_ref est le nombre d'objets de référence (le nombre d'images requêtes) 
% et 19 est le nombre d'images à retrouver pour chaque requête

function [img_db, label_db] = tests(path)

img_db_path = path;
img_db_list = glob([img_db_path, '*.gif']);
img_db = cell(1);
label_db = cell(1);

for im = 1:numel(img_db_list);
    
    img_db{im} = logical(imread(img_db_list{im}));
    label_db{im} = get_label(img_db_list{im});

end
    
end