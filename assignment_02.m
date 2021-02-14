clc;
close all;
clear all;

% Original Image
i_org = imread("peppers.png");

% Convert the Color image to Grayscale.
i = rgb2gray(i_org);

% Show original Image
subplot(3,3,1);
imshow(i);
title("Peppers Original Image");

% Show histogram of image
subplot(3,3,2);
imhist(i);
title("Image Histogram");

% Equalize the image histogram
subplot(3,3,3);
hi = histeq(i);
imshow(hi);
title("Histogram Equalized Image");

% Show histogram of equalized image
subplot(3,3,4);
imhist(hi);
title("Equalized Image Histogram");

% Filter to get the Fine Details
subplot(3,3,5);
alpha = 0.1;
h = fspecial('laplacian',alpha);
i_filt = imfilter(i_org, h);
imshow(i_filt);
title("Filtered Image for Fine details"); 

% Sharpen the Image 
radius = 4;
amount = 2;
i_sharp = imsharpen(i, "Radius",radius,"Amount",amount);
subplot(3,3,6);
imshow(i_sharp);
title("Sharpened image");

% Maximum symmetric Filter
% Type 
max = 9;
% min = 1;
% median = 5;
type = max;

kernel = ones(5,5); %[[1;5],[1;5],[1;5],[1;5],[1;5]]
% kernel = [0 1 0; 1 0 1; 0 1 0];
max_filt_sym = ordfilt2(i,type,kernel,'symmetric');
subplot(3,3,7)
imshow(max_filt_sym);
title("Maximum Filtered Image");



