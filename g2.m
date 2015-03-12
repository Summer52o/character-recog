im=imread('mickey.png');
[m,n,t]=size(im);
bw=zeros(m,n);
for i=1:m
    for j=1:n
        if(im(i,j,1)==245 && im(i,j,2)==214 && im(i,j,3)==179)
            bw(i,j)=1;
        end
    end
end
figure,imshow(bw)