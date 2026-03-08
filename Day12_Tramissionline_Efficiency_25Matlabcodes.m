clc;
clear;

% System parameters
P_load = 10000;     % Load power (W)
V = 400;            % Line voltage (V)
R = 0.4;            % Line resistance (ohms)

pf = 0.6:0.05:1;    % Power factor range

% Current calculation
I = P_load ./ (V .* pf);

% Line losses
Loss = I.^2 .* R;

% Efficiency calculation
Efficiency = (P_load ./ (P_load + Loss)) * 100;

% Plot result
plot(pf, Efficiency, 'LineWidth',2)

xlabel('Power Factor')
ylabel('Transmission Efficiency (%)')
title('Effect of Power Factor on Transmission Efficiency')

grid on