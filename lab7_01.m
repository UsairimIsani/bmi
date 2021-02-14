clc;
close all;
clear all;

image = imread("test.jpg");
subplot(2,2,1);
imshow(image)
title("Original Image");

amount = 10;
theta = 90;

h1 = fspecial("motion", amount, theta);
motion_blur = imfilter(image, h1, "replicate"); % replicate takes the same pixels on edges
subplot(2,2,2);
imshow(motion_blur)
title("motion burred image");

disk = 10;
h2 = fspecial("disk",disk);
disk_blurred = imfilter(image,h2,"replicate");
subplot(2,2,3);
imshow(disk_blurred)
title("Disk Blurred Image");

radius = 8;
amount = 8;

b = imsharpen(image, "Radius",radius, "Amount",amount);
subplot(2,2,4);
imshow(b)
title("Sharpened Image");

I = imread("test.jpg");
h1 = ones(5,5)/25;
h2 = ones(3,3)/9;
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