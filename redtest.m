d=imread('bla2.tif');
[m,n,t]=size(d);
bw=zeros(m,n);
for i=1:m
    for j=1:n
        if(d(i,j,1)>140 && d(i,j,1)<180 && d(i,j,2)>40 && d(i,j,2)<80 && d(i,j,3)>40 && d(i,j,3)<80)
            bw(i,j)=1;
        end
    end
end
imshow(bw)

se=strel('disk',11);
img=imopen(bw,se);
