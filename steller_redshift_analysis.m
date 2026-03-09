%% Stellar Redshift Analysis

clear
clc
close all

% Load spectral data
load starData

% Measurement parameters
nObs = size(spectra,1);
lambdaStart = 630.02;
lambdaDelta = 0.14;

% Create wavelength vector
lambdaEnd = lambdaStart + (nObs-1)*lambdaDelta;
lambda = lambdaStart:lambdaDelta:lambdaEnd;

% Select second star spectrum
s = spectra(:,2);

% Plot spectrum
figure
plot(lambda,s,'.-')
xlabel("Wavelength")
ylabel("Intensity")
title("Stellar Spectrum")
grid on

% Find absorption dip
[sHa, idx] = min(s);
lambdaHa = lambda(idx);

% Mark the dip
hold on
plot(lambdaHa,sHa,"rs",MarkerSize=8)

% Calculate redshift
z = lambdaHa/656.28 - 1;

% Calculate star velocity
speed = z * 299792.458;

% Show results
fprintf("Observed wavelength: %.4f nm\n",lambdaHa);
fprintf("Redshift: %.6f\n",z);
fprintf("Star velocity: %.2f km/s\n",speed);
