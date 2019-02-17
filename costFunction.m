function [J, grad] = costFunction(theta, X, y)

m = length(y); % number of training examples
J = 0;
grad = zeros(size(theta));
h = X * theta; 
h = sigmoid(h);
J = (y' * log(h)) + ((1-y)'*(log(1-h)));
J = (-1) * J; 
J = J/m;
temp = h - y; %error in all examples. One example in each row. m x 1. 
temp = temp'; % 1 * m, error in all examples in one row
for i = 1:length(grad)
	grad(i) = temp * X(:,i);
end
grad = grad/m;

end
