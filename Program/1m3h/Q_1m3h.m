tic;

clear;
clc;
file = dir('./Data/');
plotMat = [];
rhoOil = 800; %kg/m3
rhoWater = 1000; %kg/m3
rhoGas = 0.78; %kg/m3

for i = 1: length(file) - 2
   dataMat = load(['./Data/', file(i+2).name]);
   oilMat = dataMat(:, 2:4);
   oilMat(oilMat<0) = 0;
   oil = sum(oilMat, 2);
   
   waterMat = dataMat(:, 5:7);
   waterMat(waterMat<0) = 0;
   water = sum(waterMat, 2);
   
   gasMat = dataMat(:, 9:11);
   gasMat(gasMat<0) = 0;
   gas = sum(gasMat, 2);
   
   forwardDpVertical = dataMat(:, 13);
   GVF = gas ./ (oil + water + gas);
   WLR = water ./ (oil + water);
   equivalentRho = GVF * rhoGas + (1 - GVF) .* WLR * rhoWater + (1 - GVF) .* (1 - WLR) * rhoOil; %kg/m3
   sqrtOfDp1Rho_forwardDpVertical = sqrt(forwardDpVertical .* equivalentRho);
   
   tempMat = [GVF, WLR, sqrtOfDp1Rho_forwardDpVertical]; %GVF, WLR, square_root_of_dp1*rho_vertical
   plotMat = [plotMat; tempMat];
end
plotMat1m3h = plotMat; 
save('1m3h.mat', 'plotMat1m3h');

toc;