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
%%Salt and Pepper Noise
for(i=1:3)
im2(:,:,i)=imnoise(im(:,:,i),'salt & pepper',0.6);
end
figure
imshow(im2);
title(' Salt and Pepper Noisy Image');
%Gausian noise with mean 0 and varience 0.08
for(i=1:3)
    im3(:,:,i)=imnoise(im(:,:,i),'gaussian',0.08);
end
figure
imshow(im3);
title('Gausian noise Image');
%Speckle Noise with mean 0 and varience 0.05
% Speckle Noise works according to the equation J=I+n*I,where n is
% uniformly distributed random noise wiht mean 0 and varience V.
%J=imnoise(I,'spekle',V)
for(i=1:3)
    im4(:,:,i)=imnoise(im(:,:,i),'speckle',0.05);
end
figure
imshow(im4);
title('Speckle Noise Image')
