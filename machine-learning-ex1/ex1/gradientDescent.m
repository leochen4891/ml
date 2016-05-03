function [theta, J_history, theta_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
theta_history = zeros(num_iters, 2);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    diff=(X*theta-y);
    theta = theta - (alpha * sum([diff,diff].*X) / m)';

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X,y,theta);
    theta_history(iter,1) = theta(1);
    theta_history(iter,2) = theta(2);
    %printf('%d:%f\n', iter, J_history(iter));

end

end
