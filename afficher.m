function afficher (imBase, imMarque)

subplot(2, 2, 1);
image(imread(imBase));
 
subplot(2, 2, 2);
image(imread(imMarque));
 
%subplot(2, 2, 3);
%image(imread('mon_image3.png'));
 
%subplot(2, 2, 4);
%image(imread('mon_image4.png'));

end