function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

idx1 = find(y == 1); %find all 1 elements index.
idx2 = find(y == 0); %find all 0 elements index.
X1 = X(idx1,:); %get all elements for y == 1
X2 = X(idx2,:); %get all elements for y == 0
plot(X1(:,1), X1(:,2),'k+', 'LineWidth',2,'MarkerSize',7);
plot(X2(:,1), X2(:,2),'ko', 'MarkerFaceColor','y','MarkerSize',7);


% =========================================================================



hold off;

end
