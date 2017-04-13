
clear;
clc;
plotMat = load('6m3h.mat');
plotMat = plotMat.plotMat6m3h;
figure();
scatter(plotMat(:,1), plotMat(:,2),'filled'); %x-GVF, y-WLR
% title('Square root of dp1 * \rho v.s. GVF and WLR (1m^3/h)');
% xlabel('GVF (gas volume fraction)');
% ylabel('WLR (water liquid ratio)');
% zlabel('square root of differential pressure multiplying equivalent density (vertical and forward differential pressure)');