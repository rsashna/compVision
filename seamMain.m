close all;
clc;
clear;
in_img = imread('smallLake.png');
inIm = rgb2gray(in_img);

inIm = im2double (inIm);

figure(11)
imshow(inIm);

%% seam carving
% this one removes 60px horizontally
inIm=imrotate(inIm, 90);
numOfPx=60;
carvedImg = seamCarveImg(inIm, 1, numOfPx);
carvedImg=imrotate(carvedImg, 270);
figure(99)
imshow(carvedImg, []);



%%
% Stuff I dont need below:
%just checks how long the helper functions take

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
% this one removes 50px vertically
numOfPx=50;
carvedImg = seamCarveImg(inIm, 1, numOfPx);
figure(99)
imshow(carvedImg, []);

%% ex 1
% org img

close all;
clc;
clear;
in_img = imread('skylineSmall.jpg');
inIm = rgb2gray(in_img);

inIm = im2double (inIm);

figure(11)
imshow(inIm, 'Border','tight');
print('skylineOrg', '-djpeg'); 

%% removes 300px horizontally

inIm=imrotate(inIm, 90);
numOfPx=300;
carvedImg = seamCarveImg(inIm, 1, numOfPx);
carvedImg=imrotate(carvedImg, 270);
inIm=imrotate(inIm, 270);
figure(99)
imshow(carvedImg, [], 'Border','tight');
print('skylineCarvedHrz300', '-djpeg'); 

%% removes 500px vertically

numOfPx=500;
carvedImg = seamCarveImg(inIm, 1, numOfPx);

figure(99)
imshow(carvedImg, [], 'Border','tight');
print('skylineCarvedVrt500', '-djpeg'); 

%% ex 2
% org img

close all;
clc;
clear;
in_img = imread('snowWalk.jpg');
inIm = rgb2gray(in_img);

inIm = im2double (inIm);

figure(211)
imshow(inIm, 'Border','tight');
print('snowWalkOrg', '-djpeg'); 

%% removes 150px horizontally

inIm=imrotate(inIm, 90);
numOfPx=500;
carvedImg = seamCarveImg(inIm, 1, numOfPx);
carvedImg=imrotate(carvedImg, 270);
inIm=imrotate(inIm, 270);
figure(299)
imshow(carvedImg, [], 'Border','tight');
print('snowWalkCarvedHrz500', '-djpeg'); 

%% removes 100px vertically

numOfPx=100;
carvedImg = seamCarveImg(inIm, 1, numOfPx);

figure(299)
imshow(carvedImg, [], 'Border','tight');
print('snowWalkCarvedVrt100', '-djpeg'); 

%% ex 3
% org img

close all;
clc;
clear;
in_img = imread('quadSunny.jpg');
inIm = rgb2gray(in_img);

inIm = im2double (inIm);

figure(211)
imshow(inIm, 'Border','tight');
print('quadSunnyOrg', '-djpeg'); 

%% removes 300px horizontally

inIm=imrotate(inIm, 90);
numOfPx=300;
carvedImg = seamCarveImg(inIm, 1, numOfPx);
inIm=imrotate(inIm, 270);
carvedImg=imrotate(carvedImg, 270);
figure(299)
imshow(carvedImg, [], 'Border','tight');
print('quadSunnyCarvedHrz300', '-djpeg'); 

%% removes 500px vertically

numOfPx=500;
carvedImg = seamCarveImg(inIm, 1, numOfPx);

figure(299)
imshow(carvedImg, [], 'Border','tight');
print('quadSunnyCarvedVrt500', '-djpeg');
