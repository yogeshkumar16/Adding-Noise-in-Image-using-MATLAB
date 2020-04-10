clc;
clear all;
close all;
%%
[fname path]=uigetfile('*.jpeg','Select an Image');
fname=strcat(path,fname);
im=imread(fname);
figure
imshow(im);
title('Real Image');
%%Noise
for(i=1:3)
im2(:,:,i)=imnoise(im(:,:,i),'salt & pepper',.02);
end
figure
imshow(im2);
title('Noisy Image');
%%Median Filter
for(i=1:3)
    im3(:,:,i)=medfilt2(im2(:,:,i),[3,3]);
end
figure
imshow(im2);
title('Median Filtered Image');