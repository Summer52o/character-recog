im=imread('A1.png');
[m,n,t]=size(im);
bw=zeros(m,n);
y2=1;
x2=1;
y1=m;
x1=n;
%first convert the image into b/w
for i=1:m
    for j=1:n
        if(im(i,j,1)==255 && im(i,j,2)==255 && im(i,j,3)==255)
            bw(i,j)=1;
        end
    end
end
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
cr=imcrop(bw,[x1 y1 c d]);
fnl=imresize(cr,[50,50]);
imshow(fnl)
%then get the freeman code for the resized image
bw=im2bw(fnl);
bwf=imfill(bw,'holes');
B=bwboundaries(bwf);
bo=B{1};
plot(bo(:,2),bo(:,1),'g','LineWidth',1);
freeman='';
for i=1:length(bo)-1   % coz 
    r1=bo(i,1);
    c1=bo(i,2);
    r2=bo(i+1,1);
    c2=bo(i+1,2);
    
    dr=r2-r1;
    dc=c2-c1;
    if(dr==1 && dc==0)
        freeman=strcat(freeman,'0');
    elseif(dr==1 && dc==1)
        freeman=strcat(freeman,'1');
    elseif(dr==0 && dc==1)
        freeman=strcat(freeman,'2');
    elseif(dr==-1 && dc==1)
        freeman=strcat(freeman,'3');
    elseif(dr==-1 && dc==0)
        freeman=strcat(freeman,'4');
    elseif(dr==-1 && dc==-1)
        freeman=strcat(freeman,'5');
        elseif(dr==0 && dc==-1)
        freeman=strcat(freeman,'6');
        elseif(dr==1 && dc==-1)
        freeman=strcat(freeman,'7');
    end
    
end
fedt='';
for i=1:length(freeman)-1
    if freeman(i)~= freeman(i+1)
        f=freeman(i);
        fedt=strcat(fedt,f);
    end
end