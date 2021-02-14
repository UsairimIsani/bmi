clc;
clear all;
close all;

I = imread("test.jpg");
h1 = ones(10,10)/25;
h2 = ones(27,27)/9;
I1 = imfilter(I,h1);
I2 = imfilter(I,h2);

subplot(3,1,1);
imshow(I);
title("Original Image");

subplot(3,1,2);
imshow(I1);
title("Filtered Image 1");

subplot(3,1,3);
imshow(I2);
title("Filtered Image 2");