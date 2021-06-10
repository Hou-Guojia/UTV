clc;
clear all;
close all;
warning off;

I= imread('test.jpg'); 
lambda=0.01;
mu=10;
figure('name','Original image');
imshow(I);
[t1,J,E]=UTV(I,lambda,mu);
figure('name','Restored result');
imshow(J);
