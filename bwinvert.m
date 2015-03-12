function [bw]=bwinvert(im)
[m,n,t]=size(im);
bw=zeros(m,n);
for i=1:m
    for j=1:n
        if(im(i,j)==0)
            bw(i,j)=1;
        else
            bw(i,j)=0;
        end
    end
end

            