% Reading Required Images & required Preprocessing
clc;
clear all;
close all;

innocentzero = imread('D:/Vaishnavi/008_Matlab/Images/plus.jpg');
imshow(innocentzero);
title('Plus Structure');

figure;
innocentone = imread('D:/Vaishnavi/008_Matlab/Images/penta.jpg');
[a, b, c] = size(innocentzero);
innocentone = imresize(innocentone, [a, b]);
imshow(innocentone);
title('Octagon Structure');

% And Operation
figure;
innocenttwo = bitand(innocentzero, innocentone);
imshow(innocenttwo);
title('Output of And operation');

% Or Operation
figure;
innocenttwo = bitor(innocentzero, innocentone);
imshow(innocenttwo);
title('Output of Or operation');

% Not Operation
innocenttwo = bitcmp(innocentzero);
imshow(innocenttwo);
title('Output of Not operation');

% XOR Operation
figure;
innocenttwo = bitxor(innocentzero, innocentone);
imshow(innocenttwo);
title('Output of XOR operation');
