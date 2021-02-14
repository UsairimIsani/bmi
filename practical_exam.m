

clc;
clear all;
close all;

i = imread("blobs.png");
subplot(2,2,1);
imshow(i);

i_imadjust = imhist(i);
subplot(2,2,2);
imhist(i)
title("Imadjust");



amount = 10;
theta = 90; % for perpendicular

fi = fspecial("motion",amount,theta);
i_filt = imfilter(i,fi);

subplot(2,2,3);
subplot(2,2,3);
imshow(i_filt);


[centers, radii] = imfindcircles(i,[8 45],'ObjectPolarity','dark','Sensitivity',0.8);
[centers_bright, radii_bright] = imfindcircles(i,[8 45],'ObjectPolarity','bright','Sensitivity',0.7,'EdgeThreshold',0.2);
d = imdistline;

subplot(2,2,4);
imshow(i_filt);
h = viscircles(centers,radii);
h_bright = viscircles(centers_bright,radii_bright);

