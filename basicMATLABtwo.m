% Matlab code for plotting

%DEfine the range of x values
x=-5:0.1:5

%Define the function (example: y=x'2)
y= x.^2

%plot the graph
plot(x,y);
title(' Graph of y=x^2 ');
xlabel('x');
ylabel('y');
grid on;