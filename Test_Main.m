clc;
clear all;
close all;
[filename, pathname] = uigetfile('*.bmp', 'Test Image');
imgpath=strcat(pathname,filename);
I = imread(imgpath);
figure(),
imshow(I);
title('Input Image');

V = orl_data(I);
rdim = 1;
showflag=0;
[H,W] = nnmf( V, rdim, showflag );
W=W';
testW = W(1,1:16);
 test_code_identify(testW);
 load matlab;
 roc(x);