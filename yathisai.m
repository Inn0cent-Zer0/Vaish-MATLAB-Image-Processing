originalImage = imread('jsg (Custom).jfif');
% Apply Canny edge detection
edgeImage = edge(rgb2gray(originalImage), 'Canny');

% Display the original and edge-detected images
figure;
subplot(1, 2, 1);
imshow(originalImage);
title('Original Image');

subplot(1, 2, 2);
imshow(edgeImage);
title('Edge-Detected Image')