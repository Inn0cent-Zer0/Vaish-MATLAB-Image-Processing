img = imread('D:\Vaishnavi\008_Matlab\Images\apple.png');
I = imread('D:\Vaishnavi\008_Matlab\Images\apple.png');
imshow(I);
grayimg = rgb2gray(img);
edges = edge(grayimg,'Canny');
imshow(edges);
title('Edges Detected');