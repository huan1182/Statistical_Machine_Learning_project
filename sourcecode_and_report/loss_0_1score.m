function score=loss_0_1score(y1,y2)
[n,~]=size(y1);
score=sum(abs(y1-y2))/(2*n);