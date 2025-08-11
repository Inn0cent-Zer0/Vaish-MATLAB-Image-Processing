% Read the input image
inputImage = imread('D:\Venkata\nao.jpg');

% Convert the image to grayscale if it's a color image
if size(inputImage, 3) == 3
    inputImage = rgb2gray(inputImage);
end

% Define a Laplacian sharpening filter
laplacianFilter = [0 -1 0; -1 4 -1; 0 -1 0];

% Perform convolution to apply the Laplacian filter
sharpenedImage = imfilter(inputImage, laplacianFilter, 'replicate');

% Add the original image to the sharpened image to enhance the effect
% The weight of the sharpening can be adjusted by changing the scalar
sharpenedImage = inputImage + sharpenedImage;

% Display the original and sharpened images
figure;
subplot(1, 2, 1);
imshow(inputImage);
title('Original Image');

subplot(1, 2, 2);
imshow(sharpenedImage);
title('Sharpened Image');
