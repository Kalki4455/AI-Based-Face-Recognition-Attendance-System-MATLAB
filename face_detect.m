clc;
clear;
close all;

img = imread('FaceRecognitionAttendance/Dataset/Kalki/1772706920531.jpg');

faceDetector = vision.CascadeObjectDetector();

bbox = step(faceDetector,img);

detectedImg = insertObjectAnnotation(img,'rectangle',bbox,'Face');

imshow(detectedImg);
title('Face Detection Result');