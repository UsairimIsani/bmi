clc;
clear all;
close all;

a = imread("rice.png");
subplot(2,1,1);
imshow(a)
title("Original image")

radius = 4;
amount = 2;
b = imsharpen(a, "Radius",radius,"Amount",amount);
subplot(2,1,2);
imshow(b)
title("Sharpened image")