close all;
clc;
clear;
in_img = imread('smallLake.png');
inIm = rgb2gray(in_img);

inIm = im2double (inIm);

figure(11)
imshow(in_img);

%% seam carving


numOfPx=50;
carvedImg = seamCarveImg(inIm, 1, numOfPx);
figure(99)
imshow(carvedImg, []);



%%
% Stuff I dont need below:

numOfPx=10;
% carvedImg = seamCarveImg(inIm, 1, numOfPx);

tic;
scMat = scoreM(inIm, 1);
zerod = scoreZeroer(scMat);
remvd = removeZeros(inIm, zerod);
toc;

figure(22)
imshow(remvd, []);

%%


tic;
for i=1:10
inIm = im2double (remvd);
scMat = scoreM(inIm, 1);
zerod = scoreZeroer(scMat);
remvd = removeZeros(inIm, zerod);
end
toc;

figure(33)
imshow(remvd, []);

%%

numOfPx=50;
carvedImg = seamCarveImg(inIm, 1, numOfPx);
figure(99)
imshow(carvedImg, []);

