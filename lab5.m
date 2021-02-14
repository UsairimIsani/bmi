close all;
clc;
clear all;

originalRGB = imread("peppers.png");
subplot(3,2,1);
amount = 30;
theta = 90;
h = fspecial('motion', amount ,theta);
filteredRGB = imfilter(originalRGB, h);
% filteredRGB = imfilter(originalRGB, h, 30,'replicate');
% filteredRGB = imfilter(originalRGB, h,'conv');
imshow(filteredRGB);
tit = "Motion filter with len = %d and theta = %d";
title(sprintf(tit, amount, theta));


subplot(3,2,2);
h = fspecial('gaussian',[5 6],4);
% h = imgaussfilt3(originalRGB,2.0);
filteredRGB = imfilter(originalRGB, h);
imshow(filteredRGB);
title("Gaussian filter");
% h = fspecial('gaussian');

subplot(3,2,3);
alpha = 0.1;
h = fspecial('laplacian',alpha);
filteredRGB = imfilter(originalRGB, h);
imshow(filteredRGB);
title(sprintf("Laplacian filter with Alpha = %f",alpha));

subplot(3,2,4);
h = fspecial('sobel');
filteredRGB = imfilter(originalRGB, h);
imshow(filteredRGB);
title("Sobel filter");  

subplot(3,2,5);
rows = 100;
cols = 100;
h = fspecial('average', [rows cols]);
filteredRGB = imfilter(originalRGB, h);
% filteredRGB = imfilter(originalRGB, h, 30,'replicate');
% filteredRGB = imfilter(originalRGB, h,'conv');
imshow(filteredRGB);
tit = "Average filter with rows = %d and cols = %d";
title(sprintf(tit, rows, cols));