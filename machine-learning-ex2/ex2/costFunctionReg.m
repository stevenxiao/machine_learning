function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

%[J_temp, grad_temp] = costFunction(theta, X, y);
%J = J_temp + lambda * (theta' * theta)/(2 * m);
%grad(1) = grad_temp(1);
%for j = 2:size(theta)
%    grad(j) = grad_temp(j) + lambda * theta(j)/m;
%end
%Z = X * theta;
J =  (-y'*log(sigmoid(X * theta)) - (1-y)'*log(1-sigmoid(X * theta)))/m + lambda * (theta(2:length(theta))' * theta(2:length(theta)))/(2*m);

for j = 1:size(theta)
  if j == 1
    grad(j) = (sigmoid(X * theta) - y)' * X(:,j)/m;
  else
    grad(j) = (sigmoid(X * theta) - y)' * X(:,j)/m + lambda * theta(j)/m;
  end
end
  
  
% =============================================================

end
