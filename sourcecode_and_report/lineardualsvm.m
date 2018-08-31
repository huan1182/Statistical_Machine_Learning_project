% Input: matrix X of features, with n rows (samples), d columns (features)
%             X(i,j) is the j-th feature of the i-th sample
%        vector y of labels, with n rows (samples), 1 column
%             y(i) is the label (+1 or -1) of the i-th sample
% Output: vector theta of d rows, 1 column
function theta = lineardualsvm(X,y,beta)
    [n, ~] = size(X);
    f = ones(n, 1) ;
    z = zeros(n, 1);
    H = zeros(n, n);
    for i = 1:n
        for j = 1:n
            H(i, j) = y(i) * y(j) * lineproduct(X(i, :)', X(j, :)',beta);
        end
    end
    options=optimoptions('quadprog','MaxIterations',10000);
    alpha = quadprog(H, -1 * f, [], [], [], [], z,[],[],options);
    
    theta=alpha'*X;
end
