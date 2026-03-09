% Compare Stellar Spectra
% MATLAB Onramp Project

clear
clc

% Load data
load starData

% Task 1 – find minimum intensity for each spectrum
[sHa, idx] = min(spectra);

% Find wavelength of hydrogen-alpha line
lambdaHa = lambda(idx);

% Compute redshift
z = lambdaHa/656.28 - 1;

% Compute velocity of stars
speed = z * 299792.458;

% Plot spectra
figure

for v = 1:7
    
    % Extract spectrum of v-th star
    s = spectra(:,v);

    % If star is blueshifted
    if speed(v) <= 0
        plot(lambda, s, '--')
    
    % If star is redshifted
    else
        plot(lambda, s, 'LineWidth',3)
    end

    hold on

end

hold off

% Axis labels
xlabel('Wavelength')
ylabel('Intensity')

% Add legend
legend(starnames)

% Find stars moving away from Earth
movaway = starnames(speed > 0)
