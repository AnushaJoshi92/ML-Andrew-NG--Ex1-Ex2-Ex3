function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
n=size(X,2);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

Jtheta1=0;
h=zeros(m,1);
n=size(X,2);

h=X*theta;
for t=1:m
Jtheta1=Jtheta1+(power((h(t)-y(t)),2));
endfor
J= (Jtheta1/(2*m));


% =========================================================================

end
