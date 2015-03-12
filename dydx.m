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
bw=imresize(bw,[100,400]);
B=bwboundaries(bw);
bo=B{1};
[pix,k]=size(bo);
dyx=zeros(pix,1);
dxy=zeros(pix,1);
sly=zeros(10,1);
slx=zeros(10,1);
p=0;
for i=1:pix-1
    dx=bo(i,2)-bo(i+1,2);
    dy=bo(i,1)-bo(i+1,1);
    dyx(i,1)=dy/dx;
    dxy(i,1)=dx/dy;
end
tx=1;
ty=1;
for i=1:pix-9
    
    
        if dxy(i,1)== 0 && dxy(i,1)==dxy(i+1,1) && dxy(i,1)==dxy(i+2,1) && dxy(i,1)==dxy(i+3,1) && dxy(i,1)==dxy(i+4,1) && dxy(i,1)==dxy(i+5,1)
            slx(tx)=i;
            tx=tx+1;
        end
        if dyx(i,1)== 0 && dyx(i,1)==dyx(i+1,1) && dyx(i,1)==dyx(i+2,1) && dyx(i,1)==dyx(i+3,1) && dyx(i,1)==dyx(i+4,1) && dyx(i,1)==dyx(i+5,1) && dyx(i,1)==dyx(i+6,1)&& dyx(i,1)==dyx(i+7,1)&& dyx(i,1)==dyx(i+8,1)&& dyx(i,1)==dyx(i+9,1)
            sly(ty)=i;
            ty=ty+1;
        end
    
    
end

sx=size(dxy);
sy=size(dyx);







toc