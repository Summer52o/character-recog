im=imread('test.tif');

%------convert balckwhite
[m,n,k]=sizeof(im);
bw=zeros(m,n);
for i=1:m
    for j=1:n
        bw(i,j)=1;
    end
end
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (bw(i,j)==1)
            if i>y2
                y2=i;
            end
            if j>x2
                x2=j;
            end
            if i<y1
                y1=i;
            end
            if j<x1
                x1=j;
            end
        end
    end
end

d=y2-y1;
c=x2-x1;
bw=imcrop(bw,[x1 y1 c d]);
bw=imresize(bw,[50,50]);
%--------------------------------------
