function score = AMSmetric( y1,y2 )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
a=0;
b=0;
n=size(y2);
for i=1:n
   
        
     if y1(i)~=y2(i)
       b=b+1;
      else
       a=a+1;
      end
    
end
score =sqrt(2*((a+b+10)*log(1+a/(b+10))-a));
end

