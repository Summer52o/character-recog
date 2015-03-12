im=imread('rain1.png');
[m,n,t]=size(im);
bw=im2bw(im);

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
bw=imcrop(bw,[y1-1 x1-1 c+1 d+1]);



[l,b]=size(bw);
bw1=zeros(l,b);
count=zeros(l,b);


for j=1:b
    for i=1:l-1
        if bw(i,j)~=bw(i+1,j)
            count(1,j)=count(1,j)+1;
        end
    end
end

for i=1:l
    for j=1:b
        if count(1,j)==2;
            bw1(i,j)=1;
        end
    end
end
figure,imshow(bw1);
bw2=bw;
[x y]=size(bw);
for i=1:x
    for j=1:y-1
        if bw1(i,j)~=bw1(i,j+1)
            bw(i,j)=0;
        end
        if bw1(i,j)==1;
            bw2(i,j)=1;
        end
    end
end

figure,imshow(bw);
figure,imshow(bw2);
%------------------------------------------------------------
%----------------BOUNDARYING ENDS----------------------------
%------------OLD PROCEDURE STARTS----------------------------

bw3=bwinvert(bw2);

[L,obj]=bwlabel(bw3);
[x,y]=size(L);


for o=1:obj
    chk=zeros(x,y);
    for k=1:x
        for p=1:y
            if(L(k,p)==o)
                chk(k,p)=1;
            end
        end
    end
x2=1;
y2=1;
x1=x;
y1=y;
%then crop and resize the image

for i=1:x
    for j=1:y
        if (chk(i,j)==1)
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
chk=imcrop(chk,[y1 x1 c d]);
chk=imresize(chk,[100,100]);

end
