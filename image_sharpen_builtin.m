% Read the input image
inputImage = imread('D:\Venkata\nao.jpg');

% Convert the image to grayscale if it's a color image
if size(inputImage, 3) == 3
    inputImage = rgb2gray(inputImage);
end

% Sharpen the image using the built-in imsharpen function
sharpenedImage = imsharpen(inputImage);

% Display the original and sharpened images
figure;
subplot(1, 2, 1);
imshow(inputImage);
title('Original Image');

subplot(1, 2, 2);
imshow(sharpenedImage);
title('Sharpened Image');
