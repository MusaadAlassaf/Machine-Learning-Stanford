function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
%
sig = sigmoid(X * theta);
    J = mean (- y .* log(sig) - (1 - y) .* log(1 - sig)) + sum(theta(2:end) .^2) * lambda / (2 * m);
   
    theta1 = theta;
    theta1(1) = 0;
    grad = (X' * (sig - y) ./ m) + theta1 * lambda / m;







% =============================================================

grad = grad(:);

end
