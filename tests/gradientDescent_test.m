X = [1 5; 1 2; 1 4; 1 5];
y = [1 6 4 2]';
theta = [0 0]';
alpha = 0.01;
num_iters = 1000;

[theta J_hist] = gradientDescent(X, y, theta, alpha, num_iters);

theta;
% theta =
%     5.2148
%    -0.5733


J_hist(1);
% ans  =  5.9794

J_hist(1000);
% ans = 0.85426



X = [ 2 1 3; 7 1 9; 1 8 1; 3 7 4 ];
y = [2 ; 5 ; 5 ; 6];
[theta J_hist] = gradientDescent(X, y, zeros(3,1), 0.01, 100);

% results

% >> theta
% theta =
%
%    0.23680
%    0.56524
%    0.31248

% >> J_hist(1)
% ans =  2.8299
%
% >> J_hist(end)
% ans =  0.0017196
