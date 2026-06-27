% NRZ-I (Non-Return to Zero Inverted)

clc; clear; close all;

% Input Parameters
bits = [1 0 1 1 1 0 0 1];  % Binary sequence
bitrate = 1;               % Bitrate in bits per second
n = 1000;                  % Samples per bit
t = linspace(0, length(bits) / bitrate, n * length(bits)); % Time vector
x = zeros(1, length(t));   % Encoded signal initialization
lastbit = 1;               % Initial voltage level

% NRZ-I Encoding
for i = 1:length(bits)
    idx = (i-1)*n + 1:i*n; 
    if bits(i) == 1
        lastbit = -lastbit; % Toggle voltage for 1
    end
    x(idx) = lastbit; % Assign voltage level
end

% Plot the Encoded Signal
figure;
plot(t, x, 'LineWidth', 2); grid on;
title('NRZ-I Encoding'); xlabel('Time (s)'); ylabel('Amplitude');

% NRZ-I Decoding
decoded = zeros(1, length(bits)); 
lastbit = 1;

for i = 1:length(bits)
    if x((i-1)*n+1) ~= lastbit
        decoded(i) = 1;    % Voltage change indicates 1
        lastbit = -lastbit;
    end
end

% Display Decoded Bits
disp('Decoded Bits:'); 
disp(decoded);

