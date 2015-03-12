test=imread('test4.png');
[m,n,t]=size(test);
bw=zeros(m,n);
for i=1:m
    for j=1:n
        if(test(i,j,1)==255 && test(i,j,2)==255 && test(i,j,3)==255 )
            bw(i,j)=1;
        end
    end
end


[L,obj]=bwlabel(bw);
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
figure,imshow(chk)
end