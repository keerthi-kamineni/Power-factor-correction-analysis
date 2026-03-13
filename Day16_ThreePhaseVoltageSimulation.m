clc
clear
% System parameters
f = 50;              % Frequency
Vm = 325;            % Peak voltage
fs = 2000;           % Sampling frequency
t = 0:1/fs:0.1;      % Time vector
% Three phase voltages
Va = Vm*sin(2*pi*f*t);
Vb = Vm*sin(2*pi*f*t - 2*pi/3);
Vc = Vm*sin(2*pi*f*t + 2*pi/3);
% Plot the waveforms
plot(t,Va,'LineWidth',2)
hold on
plot(t,Vb,'LineWidth',2)
plot(t,Vc,'LineWidth',2)
xlabel('Time (seconds)')
ylabel('Voltage (V)')
title('Three Phase Voltage Waveforms')
legend('Phase A','Phase B','Phase C')
grid on