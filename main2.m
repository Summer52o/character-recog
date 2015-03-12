im=imread('za.png');
[m,n,t]=size(im);
bw=zeros(m,n);
y2=1;
x2=1;
y1=m;
x1=n;
for i=1:m
    for j=1:n
        if(im(i,j,1)==255 && im(i,j,2)==255 && im(i,j,3)==255)
            bw(i,j)=1;
        end
    end
end

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
cr=imcrop(bw,[x1 y1 c d]);
fnl=imresize(cr,[100,100]);
