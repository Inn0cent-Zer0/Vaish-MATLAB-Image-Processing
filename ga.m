img = imread('');
% Apply Gaussian blur (smoothing)
sigma = 2; % Standard deviation of the Gaussian kernel
blurredImg = imgaussfilt(img, sigma);

% Display the blurred image
imshow(blurredImg);
title('Blurred Image');