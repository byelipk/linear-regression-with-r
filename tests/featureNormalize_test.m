[Xn mu sigma] = featureNormalize([1 ; 2 ; 3])

% result

% Xn =
%   -1
%    0
%    1
%
% mu =  2
% sigma =  1



[Xn mu sigma] = featureNormalize(magic(3))

% result

% Xn =
%    1.13389  -1.00000   0.37796
%   -0.75593   0.00000   0.75593
%   -0.37796   1.00000  -1.13389


[Xn mu sigma] = featureNormalize([-ones(1,3); magic(3)])

% results

% Xn =
%   -1.21725  -1.01472  -1.21725
%    1.21725  -0.56373   0.67625
%   -0.13525   0.33824   0.94675
%    0.13525   1.24022  -0.40575
