clc;
clear all;
close all;

rgb = imread("ci.jpg");
% delete(d); % For terminal 
gray_image = rgb2gray(rgb);
imshow(gray_image);

% [centers, radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark','Sensitivity',0.9);
% [centers, radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark','Sensitivity',0.92);
[centers, radii] = imfindcircles(rgb,[40 350],'ObjectPolarity','dark','Sensitivity',0.94,'Method','twostage','EdgeThreshold',0.1);
% [centers_bright, radii_bright] = imfindcircles(rgb,[20 25],'ObjectPolarity','bright','Sensitivity',0.92,'Method','twostage'); % also works with rgb
% [centers_bright, radii_bright] = imfindcircles(gray_image,[20 25],'ObjectPolarity','bright','Sensitivity',0.91,'Method','twostage'); % Works without EdgeThreshold
[centers_bright, radii_bright] = imfindcircles(gray_image,[40 350],'ObjectPolarity','bright','Sensitivity',0.90,'Method','twostage','EdgeThreshold',0.1);
imshow(rgb);
d = imdistline; 
h = viscircles(centers,radii);
h_b = viscircles(centers_bright,radii_bright, 'Color','b');