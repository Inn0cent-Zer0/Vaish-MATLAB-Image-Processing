baka = imread('C:/Program Files/MATLAB/R2014b/toolbox/images/imdata/eight.tif');
imshow(baka);
BWI = roipoly;
BWI = unint(BWI);
imshow(baka);
bw2 = roiplo