% AMI Encoding (Alternate Mark Inversion)

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
 lastbit=1;
 % AMI Encoding (Alternate Mark Inversion)
 for i=1:length(bits)
     if bits(i)==1
       x((i-1)*n+1:i*n) = -lastbit;
       lastbit = -lastbit;
         
     end
  
 end 
 % Plot the AMI Encoded Signal
figure;
 plot (t,x,'Linewidth',3);
 grid on;
title('AMI Encoding');
xlabel('Time (s)');
ylabel('Amplitude');        
         
         