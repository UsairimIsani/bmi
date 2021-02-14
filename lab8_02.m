clc;
close all;
clear all;

mri = imread("mri.jpg");
% mri = rgb2gray(mri);
subplot(2,2,1);
imshow(mri)
title("Original Image");

mri_imadjust = imadjust(mri);
subplot(2,2,2);
imshow(mri_imadjust);
title("Imadjust");

mri_histeq = histeq(mri);
subplot(2,2,3);
imshow(mri_histeq);
title("Histeq");

mri_adapthisteq = histeq(mri);
subplot(2,2,4);
imshow(mri_adapthisteq);
title("Adapthisteq");
