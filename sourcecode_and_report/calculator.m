function score=calculator(theta,X,y2);
y1=kersvmpred(theta,X);
score=AMSmetric(y1,y2);