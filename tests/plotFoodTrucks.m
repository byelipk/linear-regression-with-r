setenv('GNUTERM','qt');
graphics_toolkit('gnuplot');

fprintf('Plotting Data ...\n')
data = load('../data/food-trucks.txt');
X = data(:, 1); y = data(:, 2);
m = length(y); % number of training examples

% Plot Data
plot(X, y, 'rx', 'MarkerSize', 10);      % Plot the data
ylabel('Profit in $10,000s');            % Set the y−axis label
xlabel('Population of City in 10,000s'); % Set the x−axis label

fprintf('Program paused. Press enter to continue.\n');
pause;

% =================== Part 3: Gradient descent ===================
fprintf('Running Gradient Descent ...\n')

X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
theta = zeros(2, 1); % initialize fitting parameters

% Some gradient descent settings
iterations = 1500;
alpha = 0.01;

% run gradient descent
theta = gradientDescent(X, y, theta, alpha, iterations);

% print theta to screen
fprintf('Theta found by gradient descent: ');
fprintf('%f %f \n', theta(1), theta(2));

% Plot the linear fit
hold on; % keep previous plot visible
predictions = X * theta;
plot(X(:, 2), predictions, '-')
legend('Training data', 'Linear regression')
hold off % don't overlay any more plots on this figure
