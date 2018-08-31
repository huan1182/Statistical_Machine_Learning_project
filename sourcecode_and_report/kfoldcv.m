% Input: number of folds k
%        matrix X of features, with n rows (samples), d columns (features)
%        vector y of scalar values, with n rows (samples), 1 column
% Output: vector z of k rows, 1 column
function score = kfoldcv(k,X,y,beta)
    [n, ~] = size(X);
    examples = 1:n;
    z = zeros(k, 1);
    for i=1:k
        T = floor(n*(i-1)/k)+1:floor(n*i/k);
        %sizeT = size(T, 2);
        S = setdiff(examples, T);
        theta = kerdualsvm(X(S, :), y(S),beta);
        ycv=kersvmpred(theta,X(T,:));
        z(i) = AMSmetric(ycv,y(T));
        
    end 
    score = sum(z)/(k);
    
    
        