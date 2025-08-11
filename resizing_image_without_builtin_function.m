% Close all open figures
close all

% Read the image from the specified path and store it in the variable 'g'
g = imread('D:/Vaishnavi/008_Matlab/Images/zone.gif');

% Get the dimensions (rows and columns) of the image 'g'
[r, c] = size(g);

% Initialize an empty matrix 't' to store the resized image
t = [];

% Initialize variables for indexing into the resized image matrix 't'
temp = 1;       % Row index for 't'
gemp = 1;       % Column index for 't'

% Loop through every other row of the original image (increment by 2)
for i = 1:2:r
    % Loop through every other column of the original image (increment by 2)
    for j = 1:2:c
        % Assign the pixel value from the original image to the new position in 't'
        t(temp, gemp) = g(i, j);
        
        % Increment the column index for 't'
        gemp = gemp + 1;
    end

    % Increment the row index for 't'
    temp = temp + 1;

    % Reset the column index for 't' after each row
    gemp = 1;
end

% Convert the resized matrix 't' to uint8 type to match image data type
img_resized = uint8(t);

% Display the original image
figure;
imshow(g);

% Adjust the display size to match the original image size
truesize;

% Display the resized image
figure;
imshow(img_resized);

% Adjust the display size to match the resized image size
truesize;
