clear; close all; clc
data = load('training_dataset.csv');
X = data(:,1:(size(data, 2)-1));

n = size(X, 2);
m = size(X, 1);
[X mu sigma] = featureNormalize(X);
X = [ones(m, 1) X];
n = n + 1; 


y = data(:, size(data, 2));
options = optimset('GradObj', 'on', 'MaxIter', 400);
initial_theta = zeros(n,1);
[theta, cost] = fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);

% used for stddev(weight)*weight
smalltheta = theta(2:length(theta),1);
smalltheta = smalltheta .* sigma';


