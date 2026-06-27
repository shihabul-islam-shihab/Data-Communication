clc; clear; close all;

% Input binary data
bits = [1 0 1 1 1 0 0 1];  
bitrate = 1;          % Bitrate (bits per second)
n = 100;              % Samples per bit
T = length(bits) / bitrate; % Total time duration
  
 N= n*length(bits);
  dt=T/N;
 
  t = 0:dt:T; % Time axis

x = zeros(1, length(t)); % Encoded signal initialization

% Manchester Encoding
for i = 1:length(bits)
    idx = (i-1)*n + 1:i*n; 
    mid = idx(1) + n/2 - 1; % Midpoint of each bit interval
    if bits(i) == 1
        x(idx(1):mid) = 1;  % High-to-low transition for '1'
        x(mid+1:idx(end)) = -1;
    else
        x(idx(1):mid) = -1; % Low-to-high transition for '0'
        x(mid+1:idx(end)) = 1;
    end
end

% Plot the Manchester Encoded Signal
plot(t, x, 'LineWidth', 2); grid on;
title('Manchester Line Coding');
xlabel('Time (s)');
ylabel('Amplitude');
