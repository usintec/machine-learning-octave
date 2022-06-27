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


    % theta(1) = theta(1) - alpha * 1/m * sum(((X * theta) - y));
    % theta(2) = theta(2) - alpha * 1/m * sum(((X * theta) - y)' * X(:,2));

    h = X * theta; % hypothesis h: is a vector, formed by multiplying the X matrix and the theta vector
    errors = h - y; % The "errors vector" is the difference between the 'h' vector and the 'y' vector.    
    theta_change = alpha / m * (X' * errors); % The change in theta is the sum of the product of X and the "errors vector"                        
    theta = theta - theta_change;

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
