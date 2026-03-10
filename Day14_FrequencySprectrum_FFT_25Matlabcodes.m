clc;
clear;

% Signal parameters
fs = 2000;          % Sampling frequency
t = 0:1/fs:1;       % Time vector

% Fundamental and harmonic components
V1 = 230*sin(2*pi*50*t);     % Fundamental (50 Hz)
V3 = 40*sin(2*pi*150*t);     % 3rd harmonic
V5 = 25*sin(2*pi*250*t);     % 5th harmonic

% Distorted signal
v = V1 + V3 + V5;

% FFT calculation
N = length(v);
V = fft(v);

f = (0:N-1)*(fs/N);

% Magnitude spectrum
mag = abs(V)/N;

% Plot frequency spectrum
plot(f,mag,'LineWidth',2)

xlim([0 400])
xlabel('Frequency (Hz)')
ylabel('Magnitude')
title('Frequency Spectrum using FFT')

grid on