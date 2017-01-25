setenv('GNUTERM','qt');
graphics_toolkit('gnuplot');

clear ; close all; clc;

data = load('data/food-trucks.txt');

x = data(:, 1);
y = data(:, 2);
m = length(y);

plot(x, y, 'rx', 'MarkerSize', 10);
ylabel('Profit in $10,000s');
xlabel('Population of city in 10,000s');

pause;
