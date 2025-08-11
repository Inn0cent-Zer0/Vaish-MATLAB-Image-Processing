clc;
clear all;
close all;
warning off;

c = webcam;
while true
    e = snapshot(c);
    imshow(e);
    drawnow;
end

clear c;
