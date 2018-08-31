% Input: matrix X of features, with n rows (samples), d columns (features)
%             X(i,j) is the j-th feature of the i-th sample
%        vector y of labels, with n rows (samples), 1 column
%             y(i) is the label (+1 or -1) of the i-th sample
% Output: vector theta of d rows, 1 column, record with k rows, 2 column(1st is the beta and 2nd is the score in CV)
function [theta,record]=svmtrain(X,y)
lowestscore=kfoldcv(8,X,y,0.006);
i=1;
record(i,2)=lowestscore;
record(i,1)=0.006;
goodhyparam=0.00675;
for beta=0.007:0.00025:0.015
    i=i+1;
    score=kfoldcv(8,X,y,beta);
    if lowestscore>score
        lowestscore=score;
        goodhyparam=beta;
    end
    record(i,2)=score;
    record(i,1)=beta;
end
theta=kerdualsvm(X,y,goodhyparam);