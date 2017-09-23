function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    n = length(theta);
    sum = zeros(n, 1);
    for i = 1:m
      for j = 1:n
        sum(j) = sum(j) + (X(i,:)*theta - y(i))*X(i,j);
        %sum1 = sum1 + (X(i,:)*theta - y(i))*X(i,2);
      %sum2 = sum2 + (X(i,:)*theta - y(i))*X(i,2);
      end
    end
    %temp1 = theta(1) - alpha * sum1/m;
    %temp2 = theta(2) - alpha * sum2/m;
    %theta(1) = temp1;
    %theta(2) = temp2;
    temp = theta - alpha * sum / m;
    theta = temp;





    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
