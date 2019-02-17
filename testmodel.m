data = load('training_test.csv');
X_test = data(:,1:(size(data, 2)-1));


for i=1:size(X_test,2)
	X_test(:,i) = X_test(:,i) - mu(1, i);
	X_test(:,i) = X_test(:,i) / sigma(1, i);
end

X_test = [ones(size(X_test, 1), 1) X_test];



y_test = data(:, size(data, 2));
hypo = X_test * theta;
hypo = sigmoid(hypo);
hypo = round(hypo);
error = hypo - y_test; 
error = abs(error);
total_errors = sum(error);
total_examples = length(y_test);
accuracy = (total_examples - total_errors) / (total_examples);
disp("accuracy is: ");
disp(accuracy);


