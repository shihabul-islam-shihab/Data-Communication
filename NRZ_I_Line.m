% % NRZ-I (Non-Return to Zero Inverted)

bits = [1 0 1 1 1 0 0 1]; % Input binary data
bitrate = 1;              % Bitrate in bits per second
n = 1000;                 % Samples per bit

% Generate time vector
T = length(bits) / bitrate;   % Total time
  
 N= n*length(bits);
  dt=T/N;
 
  t = 0:dt:T; % Time axis

% Initialize signal and the previous bit level
x = zeros(1, length(t));
lastbit = 1; % Initial level

% Generate NRZ-I signal
for i = 1:length(bits)
    idx = (i-1)*n + 1:i*n; % Indices for current bit
    if bits(i) == 1
        lastbit = -lastbit; % Toggle for '1'
    end
    x(idx) = lastbit; % Assign signal level
end

% Plot the NRZ-I signal
plot(t, x, 'LineWidth', 2);
xlabel('Time (s)');
ylabel('Amplitude');
title('NRZ-I Line Coding');
grid on;

