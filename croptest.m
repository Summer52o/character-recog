im=imread('zi.png');
er=imread('toughtest.png');


[m,n,t]=size(im);
se=zeros(m,n);
for i=1:m
    for j=1:n
        if(im(i,j,1)==255 && im(i,j,2)==255 && im(i,j,3)==255 )
            se(i,j)=1;
        end
    end
end 
se=im2bw(se);
[m,n]=size(se);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (se(i,j)==1)
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
se=imcrop(se,[x1 y1 c d]);



[m,n,t]=size(er);
image=ones(m,n);
for i=1:m
    for j=1:n
        if(er(i,j,1)~=255 && er(i,j,2)~=255 && er(i,j,3)~=255 )
            image(i,j)=0;
        end
    end
end  %--- thiss converts to b/w

set=strel(se);
imk=imclose(image,set);
figure,imshow(imk)