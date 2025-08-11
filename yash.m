baka = imread('C:/Program Files/MATLAB/R2014b/toolbox/images/imdata/eight.tif');
imshow(baka);
idiot = roipoly(baka);  % Allow user to select a region of interest (ROI)

subplot(1,2,1);
imshow(baka);
title('Original Image');

subplot(1,2,2);
imshow(baka .* idiot);  % Show the original image with the selected ROI
title('Image after multiplication');
