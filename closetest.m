test=imread('testpepper.png');

[m,n,t]=size(test);
f=0;
bw=zeros(m,n);
for i=1:m
    for j=1:n
        if(test(i,j,1)==255 && test(i,j,2)==255 && test(i,j,3)==255 )
            bw(i,j)=1;
        end
    end
end

se=strel('disk',1);
bw=imclose(bw,se); 
figure,imshow(bw)