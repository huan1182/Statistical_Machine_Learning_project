function score=calculatorv2(theta,X,y2)
y1=kersvmpred(theta,X);
score=AMSmetricv2(y1,y2);