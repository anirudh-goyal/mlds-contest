actualtest = load('actual_test.csv');

for i=1:size(actualtest,2)
	actualtest(:,i) = actualtest(:,i) - mu(1, i);
	actualtest(:,i) = actualtest(:,i) / sigma(1, i);
end

actualtest = [ones(size(actualtest, 1), 1) actualtest];
final_hypo = actualtest * theta;
final_hypo = sigmoid(final_hypo);
final_hypo = round(final_hypo);

disp("hypotheses: ");
for i=1:length(final_hypo)
	if(final_hypo(i) == 1)
		disp("prose");
	else
		disp("poetry");
	endif
end
% disp(final_hypo);

