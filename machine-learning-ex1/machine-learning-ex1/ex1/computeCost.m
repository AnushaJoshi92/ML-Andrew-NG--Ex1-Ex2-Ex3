function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

thetat= transpose(theta);
Jtheta1=0;
h=zeros(1);
k=1;

for t=1:m
	h(t)=thetat(k)+ (thetat(k+1) * X(t,k+1));
	Jtheta1=Jtheta1+((h(t)-y(t))^2);
endfor
J= (Jtheta1/(2*m));
return;




% =========================================================================
d
end
