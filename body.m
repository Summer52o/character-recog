i1=imread('mickey.png');
[m,n,t]=size(i1);
b1=zeros(m,n);
for i=1:m
    for j=1:n
        if(i1(i,j,1)==0 && i1(i,j,2)==0 && i1(i,j,3)==0)
            b1(i,j)=1;
        else
            b1(i,j)=0;
        end
    end
end
se=strel('disk',2);
b2=imopen(b1,se);
