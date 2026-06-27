
% Matlab code using loop

%DEfine the range of x values
x=-pi:0.1:pi;

%Initializa y values
y= zeros(size(x))
 %Calculate y values using a for loop
 for i=1:length(x)
     y(i)= sin(x(i)); 
 end

%plot the graph
plot(x,y);
title(' Graph of y= sin(x) ');
xlabel('x');
ylabel('y');
grid on;