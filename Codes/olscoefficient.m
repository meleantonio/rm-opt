function z = olscoefficient(X, Y)
% OLSCOEFFICIENT calculates the OLS coefficients 
% Inputs:
%   X: a matrix m x n where m is the number of observations and n is the number of regressors
%   Y: a m x 1 vector with the data for the dependent variable
%
% Output:
%   z: OLS coefficients
  
    z = inv(X'*X)*(X'*Y);
end