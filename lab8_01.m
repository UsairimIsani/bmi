clc;
clear all;
close all;


usairim = imread("pout.tif");
subplot(2,2,1);
imshow(usairim)
title("Original Image");

usairim_imadjust = imadjust(usairim);
subplot(2,2,2);
imshow(usairim_imadjust);
title("Imadjust");

usairim_histeq = histeq(usairim);
subplot(2,2,3);
imshow(usairim_histeq);
title("Histeq");

usairim_adapthisteq = histeq(usairim);
subplot(2,2,4);
imshow(usairim_adapthisteq);
title("Adapthisteq");