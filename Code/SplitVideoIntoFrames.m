%% Split video into frames
% This code splits video into separate frames saved aj image file
clc;
clear all;
close all;

videoName = 'Video.mp4';
video = VideoReader(videoName);
% implay(videoName); % Play video
mkdir Frames; 

for img = 1:video.NumberOfFrames
    filenameOfFrame = strcat('Frames\frame', num2str(img),'.jpg');  % Generates unique name for frame
    frame = read(video, img);                                       % Loading frame
    imwrite(frame,filenameOfFrame);                                 % Save frame as image  
end