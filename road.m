d=imread('rd5.tif');
[m,n,t]=size(d);
bw=zeros(m,n);
for i=1:m
    for j=1:n
        if(d(i,j,1)~=195 && d(i,j,2)~=195 && d(i,j,3)~=140)
            bw(i,j)=1;
        end
    end
end
imshow(bw)
se = strel('disk',8);
I_opened = imopen(bw,se);
figure, imshow(I_opened,[])

jk=I_opened;
cc=bwconncomp(jk,4);
cc.NumObjects   