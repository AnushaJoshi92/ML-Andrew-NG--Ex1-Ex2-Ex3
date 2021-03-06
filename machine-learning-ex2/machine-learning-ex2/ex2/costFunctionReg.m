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
n=size(theta);
J1=J2=0;
n=size(X,2);
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


h= sigmoid(X*theta);

for i=1:m
J1= J1+ (-1)*((y(i)*log(h(i)))+((1-y(i))*log(1-h(i))));
endfor

for j=2:n
J2=J2+power(theta(j),2);
endfor
J=(1/m)*(J1+(J2/2)*lambda);

grad=((1/m)*(transpose(X)*(h-y)));
theta(1)=0;
grad=grad+ (lambda/m)*theta;

% =============================================================

end
