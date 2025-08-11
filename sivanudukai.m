originalImage = imread('jsg (Custom).jfif');
grayImg = rgb2gray(img);

figure;
subplot(1, 2, 1);
imshow(originalImage);
title('Original Image');

subplot(1, 2, 2);
imshow(grayImg);
title('GrayScale Image')