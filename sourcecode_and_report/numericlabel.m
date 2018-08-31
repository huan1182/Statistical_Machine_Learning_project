%N is the name of data file
function y=numericlabel(N)
y=zeros(20000,1);
for i=1:20000
    if N(i)=='s'
        y(i)=1;
    else y(i)=-1;
    end
end
