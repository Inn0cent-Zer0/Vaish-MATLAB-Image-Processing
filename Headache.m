% Read a DICOM image
WhatAmIDoing = dicomread('D:/Vaishnavi/008_Matlab/knee1.dcm');

% Display the DICOM image using a scaled colormap
imagesc(WhatAmIDoing);

% Find the maximum pixel value in the DICOM image
max(WhatAmIDoing(:));

% Find the minimum pixel value in the DICOM image
min(WhatAmIDoing(:));

% Compute the mean pixel value of the DICOM image
mean(WhatAmIDoing(:));

% Normalize the pixel values of the DICOM image to the range [0, 1]
WTF = mat2gray(WhatAmIDoing);

% Find the maximum pixel value in the normalized image
max(WTF(:));

% Find the minimum pixel value in the normalized image
min(WTF(:));

% Compute the mean pixel value of the normalized image
mean(WTF(:));

% Display the normalized image using a scaled colormap
imagesc(WTF);
