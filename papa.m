maha = imread('C:/Program Files/MATLAB/R2014b/toolbox/images/imdata/rice.png');
mani = imread('C:/Program Files/MATLAB/R2014b/toolbox/images/imdata/cameraman.tif');
output = zeros(256, 256); 

for i = 1:1:256
    for j = 1:256 
       output(i,j) = maha(i,j) + mani(i,j); 
    end
end

% Display images using subplots
figure;

subplot(1, 3, 1);
imshow(maha, []);
title('Image 1 - Cameraman');

subplot(1, 3, 2);
imshow(mani, []);
title('Image 2 - Rice');

subplot(1, 3, 3);
imshow(output, []);
title('Output');
