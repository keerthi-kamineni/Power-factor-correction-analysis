clc
clear
% Sampling parameters
fs = 2000;               % Sampling frequency
t = 0:1/fs:1;            % Time vector
% Signal components
V1 = 230*sin(2*pi*50*t);     % Fundamental
V3 = 40*sin(2*pi*150*t);     % 3rd harmonic
V5 = 25*sin(2*pi*250*t);     % 5th harmonic
v = V1 + V3 + V5;  % Distorted signal
% FFT
N = length(v);
V = fft(v);
mag = abs(V)/N;
f = (0:N-1)*(fs/N);   % Frequency axis
% Detect significant harmonics
threshold = 1;   % detection threshold
fprintf('Detected Harmonics:\n')
for i = 1:length(f)
    if mag(i) > threshold && f(i) <= 400
        fprintf('Frequency: %.1f Hz   Magnitude: %.2f\n',f(i),mag(i));
    end
end
% Plot spectrum
plot(f,mag,'LineWidth',2)

xlim([0 400])
xlabel('Frequency (Hz)')
ylabel('Magnitude')
title('Harmonic Spectrum')

grid on