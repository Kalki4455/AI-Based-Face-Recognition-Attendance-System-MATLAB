clc;
clear;
close all;

load('trainedModel.mat');

img = imread('FaceRecognitionAttendance/Dataset/Kalki/1772706920531.jpg');

img = imresize(img,[64 64]);

img = rgb2gray(img);

feature = double(img(:))';

predictedPerson = predict(Mdl,feature);

disp('Recognized Person:');
disp(predictedPerson);

markAttendance(char(predictedPerson));