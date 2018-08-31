% Input: matrix X of features, with n rows (samples), d columns (features)
%             X(i,j) is the j-th feature of the i-th sample
%        vector theta of training, with d rows , 1 column
%             theta(i) is the component of the i-th feature
% Output: vector y of n rows, 1 column
function y=kersvmpred(theta,X)
[n,~]=size(X);
y=zeros(n,1);
for i=1:n
    if theta*X(i,:)'>0
        y(i)=1;
    else
        y(i)=-1;
    end
end
end
