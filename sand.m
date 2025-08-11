ug = imread('D:/Vaishnavi/008_Matlab/Images/Non-defective.jpg');  % Replace with actual path
pg =  imread('D:/Vaishnavi/008_Matlab/Images/Defective.jpg'); % Replace with actual path

% Resize 'pg' to match the size of 'ug'
[q, c, ~] = size(ug);  % Get dimensions of 'ug'
weekend = imresize(pg, [q, c]);  % Resize 'pg' to match 'ug'

% Display the images and their difference
subplot(1, 3, 1);
imshow(ug);
title('PCB Image without any defect');

subplot(1, 3, 2);
imshow(pg);
title('PCB Image with defect');

% Calculate the difference between 'ug' and 'weekend'
difference = imsubtract(ug, weekend);

subplot(1, 3, 3);
imshow(difference);
title('Error');
