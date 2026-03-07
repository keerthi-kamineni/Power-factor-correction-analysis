clc;
clear;

P = 15000;          % Real power (W)
V_L = 400;          % Line voltage (V)
f = 50;             % Frequency (Hz)

pf_initial = 0.75;
pf_target = 0.95;

% Phase angles
theta1 = acos(pf_initial);
theta2 = acos(pf_target);

% Reactive power before correction
Q1 = P * tan(theta1);

% Reactive power after correction
Q2 = P * tan(theta2);

% Required capacitor reactive power
Qc = Q1 - Q2;

% Line current before correction
I1 = P / (sqrt(3) * V_L * pf_initial);

% Line current after correction
I2 = P / (sqrt(3) * V_L * pf_target);

% Display results
fprintf('Reactive Power Before Correction = %.2f VAR\n',Q1);
fprintf('Reactive Power After Correction  = %.2f VAR\n',Q2);
fprintf('Required Capacitor kVAR          = %.2f VAR\n',Qc);
fprintf('Current Before PF Correction     = %.2f A\n',I1);
fprintf('Current After PF Correction      = %.2f A\n',I2);