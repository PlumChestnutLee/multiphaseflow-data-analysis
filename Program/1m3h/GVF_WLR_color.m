tic;

clear;
clc;
file = dir('./Data/');
figure(1);
hold on;
title('WLR v.s. GVF with 1m^3/h');
xlabel('GVF');
ylabel('WLR');
figure(2);
hold on;
title('WLR v.s. GVF with 1m^3/h');
xlabel('GVF');
ylabel('WLR');
c = jet(51);

for i = 3: length(file)
    fileName = file(i).name;
    dataMat = load(['./Data/', fileName]);
    oilMat = dataMat(:, 2:4);
    oilMat(oilMat<0) = 0;
    oil = sum(oilMat, 2);
   
    waterMat = dataMat(:, 5:7);
    waterMat(waterMat<0) = 0;
    water = sum(waterMat, 2);
   
    gasMat = dataMat(:, 9:11);
    gasMat(gasMat<0) = 0;
    gas = sum(gasMat, 2);
    
    GVF = gas ./ (oil + water + gas);
    WLR = water ./ (oil + water);
    
    switch fileName
        case {'WQLData_2017-03-28_14-18-15.txt', ...
                 'WQLData_2017-03-28_15-21-19.txt', ...
                 'WQLData_2017-03-28_14-40-48.txt', ...
                 'WQLData_2017-03-28_15-40-14.txt', ...
                 'WQLData_2017-03-28_15-54-56.txt', ...
                 'WQLData_2017-03-28_16-12-19.txt', ...
                 'WQLData_2017-03-28_16-29-22.txt', ...
                 'WQLData_2017-03-28_16-45-16.txt', ...
                 'WQLData_2017-03-28_17-02-23.txt', ...
                 'WQLData_2017-03-28_17-29-54.txt', ...
                 'WQLData_2017-03-28_17-42-45.txt'}
             figure(1); % GVF-0%
             G1 = scatter(GVF, WLR, 7, 'y', 'fill');
             
        case {'WQLData_2017-03-29_10-10-36.txt', ...
                 'WQLData_2017-03-29_10-33-04.txt', ...
                 'WQLData_2017-03-29_10-51-39.txt', ...
                 'WQLData_2017-03-29_11-06-27.txt', ...
                 'WQLData_2017-03-29_11-46-57.txt', ...
                 'WQLData_2017-03-29_11-36-36.txt', ...
                 'WQLData_2017-03-29_11-59-24.txt', ...
                 'WQLData_2017-03-29_12-14-32.txt', ...
                 'WQLData_2017-03-29_12-29-06.txt', ...
                 'WQLData_2017-03-29_12-44-56.txt'}
             figure(1); % GVF-30%
             G2 = scatter(GVF, WLR, 7, 'm', 'fill');
             
        case {'WQLData_2017-03-29_14-28-11.txt', ...
                'WQLData_2017-03-29_14-53-35.txt', ...
                'WQLData_2017-03-29_15-10-14.txt', ...
                'WQLData_2017-03-29_15-24-38.txt', ...
                'WQLData_2017-03-29_15-37-32.txt', ...
                'WQLData_2017-03-29_15-48-15.txt', ...
                'WQLData_2017-03-29_16-03-52.txt', ...
                'WQLData_2017-03-29_16-18-22.txt', ...
                'WQLData_2017-03-29_16-34-42.txt', ...
                'WQLData_2017-03-29_16-45-31.txt'}
             figure(1); % GVF-50%
             G3 = scatter(GVF, WLR, 7, 'k', 'fill');
             
        case {'WQLData_2017-03-30_09-52-07.txt', ...
                'WQLData_2017-03-30_10-17-37.txt', ...
                'WQLData_2017-03-30_10-35-29.txt', ...
                'WQLData_2017-03-30_10-54-09.txt', ...
                'WQLData_2017-03-30_11-07-40.txt', ...
                'WQLData_2017-03-30_11-21-44.txt', ...
                'WQLData_2017-03-30_11-36-27.txt', ...
                'WQLData_2017-03-30_11-50-25.txt', ...
                'WQLData_2017-03-30_12-05-26.txt', ...
                'WQLData_2017-03-30_12-19-48.txt'}
             figure(1); % GVF-70%
             G4 = scatter(GVF, WLR, 7, 'r', 'fill');
             
        case {'WQLData_2017-03-30_13-20-02.txt', ...
                'WQLData_2017-03-30_13-39-16.txt', ...
                'WQLData_2017-03-30_13-54-20.txt', ...
                'WQLData_2017-03-30_14-07-03.txt', ...
                'WQLData_2017-03-30_14-19-29.txt', ...
                'WQLData_2017-03-30_14-33-14.txt', ...
                'WQLData_2017-03-30_14-46-04.txt', ...
                'WQLData_2017-03-30_14-58-52.txt', ...
                'WQLData_2017-03-30_15-12-03.txt', ...
                'WQLData_2017-03-30_15-20-23.txt'}
             figure(1); % GVF-90%
             G5 = scatter(GVF, WLR, 7, 'g', 'fill');
             
        case {'WQLData_2017-03-30_15-36-57.txt', ...
                'WQLData_2017-03-30_15-54-42.txt', ...
                'WQLData_2017-03-30_16-10-17.txt', ...
                'WQLData_2017-03-30_16-22-47.txt', ...
                'WQLData_2017-03-30_16-39-13.txt', ...
                'WQLData_2017-03-30_16-55-26.txt', ...
                'WQLData_2017-03-30_17-08-25.txt', ...
                'WQLData_2017-03-30_17-32-26.txt', ...
                'WQLData_2017-03-30_17-51-17.txt', ...
                'WQLData_2017-03-30_18-04-15.txt'}
             figure(1); % GVF-95%
             G6 = scatter(GVF, WLR, 7, 'b', 'fill');
             
        otherwise
            disp('GVF-Error!');
             
    end
    


    
    switch fileName
        case {'WQLData_2017-03-28_14-18-15.txt', ...
                'WQLData_2017-03-29_10-10-36.txt', ...
                'WQLData_2017-03-29_14-28-11.txt', ...
                'WQLData_2017-03-30_09-52-07.txt', ...
                'WQLData_2017-03-30_13-20-02.txt', ...
                'WQLData_2017-03-30_15-36-57.txt'}
             figure(2); % WLR-0%
             W1 = scatter(GVF, WLR, 7, c(1, :), 'fill');
             
        case {'WQLData_2017-03-28_15-21-19.txt', ...
                'WQLData_2017-03-29_10-33-04.txt', ...
                'WQLData_2017-03-29_14-53-35.txt', ...
                'WQLData_2017-03-30_10-17-37.txt', ...
                'WQLData_2017-03-30_13-39-16.txt', ...
                'WQLData_2017-03-30_15-54-42.txt'}
             figure(2); % WLR-10%
             W2 = scatter(GVF, WLR, 7, c(6, :), 'fill');
             
        case {'WQLData_2017-03-28_14-40-48.txt', ...
                'WQLData_2017-03-29_10-51-39.txt', ...
                'WQLData_2017-03-29_15-10-14.txt', ...
                'WQLData_2017-03-30_10-35-29.txt', ...
                'WQLData_2017-03-30_13-54-20.txt', ...
                'WQLData_2017-03-30_16-10-17.txt'}
             figure(2); % WLR-20%
             W3 = scatter(GVF, WLR, 7, c(11, :), 'fill');
             
        case {'WQLData_2017-03-28_15-40-14.txt', ...
                'WQLData_2017-03-29_11-06-27.txt', ...
                'WQLData_2017-03-29_15-24-38.txt', ...
                'WQLData_2017-03-30_10-54-09.txt', ...
                'WQLData_2017-03-30_14-07-03.txt', ...
                'WQLData_2017-03-30_16-22-47.txt'}
             figure(2); % WLR-30%
             W4 = scatter(GVF, WLR, 7, c(16, :), 'fill');
             
        case {'WQLData_2017-03-28_15-54-56.txt', ...
                'WQLData_2017-03-29_11-46-57.txt', ...
                'WQLData_2017-03-29_15-37-32.txt', ...
                'WQLData_2017-03-30_11-07-40.txt', ...
                'WQLData_2017-03-30_14-19-29.txt', ...
                'WQLData_2017-03-30_16-39-13.txt'}
             figure(2); % WLR-40%
             W5 = scatter(GVF, WLR, 7, c(21, :), 'fill');
             
        case {'WQLData_2017-03-28_16-12-19.txt', ...
                'WQLData_2017-03-29_11-36-36.txt', ...
                'WQLData_2017-03-29_15-48-15.txt', ...
                'WQLData_2017-03-30_11-21-44.txt', ...
                'WQLData_2017-03-30_14-33-14.txt', ...
                'WQLData_2017-03-30_16-55-26.txt'}
             figure(2); % WLR-50%
             W6 = scatter(GVF, WLR, 7, c(26, :), 'fill');
        
        case {'WQLData_2017-03-28_16-29-22.txt', ...
                'WQLData_2017-03-29_11-59-24.txt', ...
                'WQLData_2017-03-29_16-03-52.txt', ...
                'WQLData_2017-03-30_11-36-27.txt', ...
                'WQLData_2017-03-30_14-46-04.txt', ...
                'WQLData_2017-03-30_17-08-25.txt'}
             figure(2); % WLR-60%
             W7 = scatter(GVF, WLR, 7, c(31, :), 'fill');
        
        case {'WQLData_2017-03-28_16-45-16.txt', ...
                'WQLData_2017-03-29_12-14-32.txt', ...
                'WQLData_2017-03-29_16-18-22.txt', ...
                'WQLData_2017-03-30_11-50-25.txt', ...
                'WQLData_2017-03-30_14-58-52.txt', ...
                'WQLData_2017-03-30_17-32-26.txt'}
             figure(2); % WLR-70%
             W8 = scatter(GVF, WLR, 7, c(36, :), 'fill');
        
        case {'WQLData_2017-03-28_17-02-23.txt', ...
                'WQLData_2017-03-29_12-29-06.txt', ...
                'WQLData_2017-03-29_16-34-42.txt', ...
                'WQLData_2017-03-30_12-05-26.txt', ...
                'WQLData_2017-03-30_15-12-03.txt', ...
                'WQLData_2017-03-30_17-51-17.txt'}
             figure(2); % WLR-80%
             W9 = scatter(GVF, WLR, 7, c(41, :), 'fill');
             
        case {'WQLData_2017-03-28_17-29-54.txt'}
             figure(2); % WLR-90%
             W10 = scatter(GVF, WLR, 7, c(46, :), 'fill');
             
        case {'WQLData_2017-03-28_17-42-45.txt', ...
                'WQLData_2017-03-29_12-44-56.txt', ...
                'WQLData_2017-03-29_16-45-31.txt', ...
                'WQLData_2017-03-30_12-19-48.txt', ...
                'WQLData_2017-03-30_15-20-23.txt', ...
                'WQLData_2017-03-30_18-04-15.txt'}
             figure(2); % WLR-100%
             W11 = scatter(GVF, WLR, 7, c(51, :), 'fill');
        
        otherwise
            disp('WLR-Error!');
    
    end
 
%     forwardDpVertical = dataMat(:, 13);
%     GVF = gas ./ (oil + water + gas);
%     WLR = water ./ (oil + water);
%     equivalentRho = GVF * rhoGas + (1 - GVF) .* WLR * rhoWater + (1 - GVF) .* (1 - WLR) * rhoOil; %kg/m3
%     sqrtOfDp1Rho_forwardDpVertical = sqrt(forwardDpVertical .* equivalentRho);
   
%     tempMat = [GVF, WLR, sqrtOfDp1Rho_forwardDpVertical]; %GVF, WLR, square_root_of_dp1*rho_vertical
%     plotMat = [plotMat; tempMat];

end

figure(1);
legend([G1, G2, G3, G4, G5, G6], 'GVF-0%', 'GVF-30%', 'GVF-50%', 'GVF-70%', 'GVF-90%', 'GVF-95%');
figure(2);
legend([W1, W2, W3, W4, W5, W6, W7, W8, W9, W10, W11], 'WLR-0%', 'WLR-10%', 'WLR-20%', 'WLR-30%', 'WLR-40%', 'WLR-50%', ...
           'WLR-60%', 'WLR-70%', 'WLR-80%', 'WLR-90%', 'WLR-100%');

toc;






