%% clear workspace, command window and close figures. 
close all;
clear all;
clc;

%% variables
intv = 100; % +- interval
stable_point_th = 0.1; % signal power of stable point threshold
%%

load('-mat','eeglab_data.set')
data = EEG.data(1,:);
% peaks in original signal to find peaks
[pks, locs, ] = findpeaks(data);
%find peaks in reversed data to find minima's
data1 = -data;
data1 = lowpass(data1,0.9);
[pks_min, locs_min, ] = findpeaks(data1);
%[pts] = identify_stable_points(data,intv,pks,locs);


figure;
plot(EEG.data(1,:));

figure;
findpeaks(data,'MinPeakDistance',500)

figure;
findpeaks(data1,'MinPeakDistance',500)
