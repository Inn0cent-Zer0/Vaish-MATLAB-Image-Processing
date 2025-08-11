% it acts like a low Cass filter which basically removes or rejects 
% the high frequency component, similarly while blurring the image
% or while making a particular video part as blurred
% weare basically performing low pass filtering 
% frequency component in 
x=imread('Golden.jfif');
imshow(x)
ag=fspecial('average',[10,10]);
g=imfilter(x,ag);
imshow(g)
clc
clear all
close all
x=imread('Golden.jfif');
for i=1:30
ag=fspecial('average',[i,i]);
g=imfilter(x,ag);
imshow(g);
drawnow;
end