im=imread('rain1.png');
mc=imread('zl.png');
bw=im2bw(im);
mc=im2bw(mc);
[m,n]=size(bw);

x2=1;
y2=1;
x1=m;
y1=n;
%then crop and resize the image

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

[m1,n1]=size(mc);

x2=1;
y2=1;
x1=m1;
y1=n1;
%then crop and resize the image

for i=1:m1
    for j=1:n1
        if (mc(i,j)==1)
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
mc=imcrop(mc,[y1 x1 c d]);
mc=imresize(mc,[30,1]);
bw=imresize(bw,[100,400]);


se=strel('arbitrary',mc);
bwi=imerode(bw,se);
figure,imshow(bwi);
figure,imshow(bw);