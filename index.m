function [idx1,idx4,idx6,idx10] = getdata(x,y)

%x/H=1
idx1=[];
c=1;
for i=1:length(x)
    if x(i)>0.9 && x(i)<1.1
        idx1(c,1)=i;
        c=c+1;
    end
end
idx1(y(idx1)>2.6)=nan;
idx1=rmmissing(idx1);


%x/H=4
idx4=[];
c=1;
for i=1:length(x)
    if x(i)>3.9 && x(i)<4.1
        idx4(c,1)=i;
        c=c+1;
    end
end
idx4(y(idx4)>2.6)=nan;
idx4=rmmissing(idx4);

%x/H=6
idx6=[];
c=1;
for i=1:length(x)
    if x(i)>5.9 && x(i)<6.1
        idx6(c,1)=i;
        c=c+1;
    end
end
idx6(y(idx6)>2.6)=nan;
idx6=rmmissing(idx6);


%x/H=10
idx10=[];
c=1;
for i=1:length(x)
    if x(i)>9.9 && x(i)<10.1
        idx10(c,1)=i;
        c=c+1;
    end
end
idx10(y(idx10)>2.6)=nan;
idx10=rmmissing(idx10);


end