
clc; clear; close all;

% Input and Parameters
bits = [1 0 1 1 1 0 0 1];  
bitrate = 1; n = 1000; % Samples per bit
t = linspace(0, length(bits) / bitrate, n * length(bits)); % Time vector
x = zeros(1, length(t)); 

% Manchester Encoding
for i = 1:length(bits)
    idx = (i-1)*n + 1:i*n;
    mid = idx(1) + n/2 - 1; % Midpoint of each bit interval
    if bits(i) == 1
        x(idx(1):mid) = 1;  x(mid+1:idx(end)) = -1; % High-to-low for '1'
    else
        x(idx(1):mid) = -1; x(mid+1:idx(end)) = 1;  % Low-to-high for '0'
    end
end

% Plot Encoded Signal
figure;
plot(t, x, 'LineWidth', 2); grid on;
title('Manchester Encoding'); xlabel('Time (s)'); ylabel('Amplitude');

% Decoding
result = (x(1:n:end) > 0); % Check the first half of each bit for decoding

% Display Decoded Bits
disp('Decoded Bits:');
disp(result);
