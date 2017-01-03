function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma.
%
%               Note that X is a matrix where each column is a
%               feature and each row is an example. You need
%               to perform the normalization separately for
%               each feature.
%
% Hint: You might find the 'mean' and 'std' functions useful.
%

mu = mean(X) % mu will keep the mean of every feature
sigma = std(X) % sigma is the standard deviation value of the feature (most data points will lie within
% 2 standard deviations of the mean); this is an alternative to taking the range
% of values (max-min)
index =  1:size(X,2);  % creating a index of number of column headers

%loop to normalize all elements in the array
for i = index,
  Xmu = X(:,i) - mu(i);
  X_norm(:,i) = Xmu / sigma(i);
end
% end of normalization loop

% ============================================================

end
