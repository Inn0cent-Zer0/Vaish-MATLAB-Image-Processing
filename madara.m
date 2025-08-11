% the neighborhood of a pixel in the image consists of the pixels surrounding it
% 3 x 3 sixed neighborhood of ap ixel at the location(i,j);
% mean filter replaces the intensity value of that pixel by the
%mean of the
% neighborhood of that pixel
% Mean Filter Explanation

% Image Processing Concept:
% The mean filter is a fundamental technique used to smooth images by reducing noise and
% enhancing certain features. It involves averaging the pixel values within a defined
% neighborhood of each pixel in the input image.

% Input Image:
% A matrix representing the original image, where each element corresponds to a pixel's intensity.

% Mean Filter:
% A square matrix (kernel) of equal size to the desired neighborhood. The values in the kernel
% are typically all equal (e.g., 1/9 for a 3x3 kernel), representing equal weights for each pixel.

% Process:
% 1. The mean filter is applied to the input image by sliding it across the image,
%    one pixel at a time.
% 2. At each position, the elements within the filter's area are multiplied by their
%    corresponding pixel values in the image.
% 3. The resulting products are summed and divided by the number of elements in the filter
%    (kernel size) to obtain the average value.
% 4. The calculated average becomes the new pixel value in the output image.

% Output Image:
% A smoothed version of the input image, with reduced noise and potentially blurred edges.
I = imread('D:/Vaishnavi/008_Matlab/Images/Lenna_(test_image).png')

Img = rgb2gray(I);

[m,n] = size(Img);

output = zeros(m,n);
for i = 1:m
    for j=1:n
        % we set the neighborhood boundaries  here
        % we are considering 3x3 nieghborhood hree,
        % so neighborhood matrix of any pixel will have 9 pixels
        % we have to be careful while choosing 
        
    end
    
 
end