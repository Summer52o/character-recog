bi=imread('ts.png');
[m,n,t]=size(bi);
bw=zeros(m,n);
for i=1:m
    for j=1:n
        if(bi(i,j,1)~=0 && bi(i,j,2)~=0 && bi(i,j,3)~=0 )
            bw(i,j)=1;
        end
    end
end
for x=n:-1:1
    for y=1:m
        if (bw(y,x)==1)
            ux=x;
            break
        end
    end
end

for y=m:-1:1
    for x=1:n
        if (bw(y,x)==1)
            uy=y;
            break
        end
    end
end

for x=1:n
    for y=1:m
        if (bw(y,x)==1)
            dx=x;
            break
        end
    end
end

for y=1:m
    for x=1:n
        if (bw(y,x)==1)
            dy=y;
            break
        end
    end
end
   
bc=imcrop(bw,[ux uy dx dy]);