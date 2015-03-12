tic
im=imread('rain1.png');
bw=im2bw(im);
[m,n]=size(bw);

x2=1;
y2=1;
x1=m;
y1=n;
%then crop the image

for i=1:m
    for j=1:n
        if (bw(i,j)==1)
            if i>x2
                x2=i;
            end
            if j>y2
                y2=j;
            end
            if i<x1
                x1=i;
            end
            if j<y1
                y1=j;
            end
        end
    end
end


d=x2-x1;
c=y2-y1;
bw=imcrop(bw,[y1 x1 c d]);
bw=imresize(bw,[100 400]);

t=50;
for l=1:8
    temp=imcrop(bw,[1,1,])





toc