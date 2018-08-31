function score = AMSmetricv2( y1,y2 )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
a=0;
b=0;
n=size(y2);
for i=1:n
    if y2(i)==1
        
     if y1(i)~=y2(i)
       b=b+1;
      else
       a=a+1;
      end
    end
end
score =sqrt(2*((a+b+10)*log(1+a/(b+10))-a));
end

