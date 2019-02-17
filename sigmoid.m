function g = sigmoid(z)

g = zeros(size(z));
z = -1 * z; 
g = exp(z);
g = g + 1; 
g = g .^ (-1);

end
