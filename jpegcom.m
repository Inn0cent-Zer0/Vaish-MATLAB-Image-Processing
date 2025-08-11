originalImage = imread('jsg (Custom).jfif');

% Save the image in JPEG format with specified compression quality
imwrite(originalImage, 'compressed_image.jpg', 'Quality', 10); 