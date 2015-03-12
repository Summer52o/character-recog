[m,n]=size(b7);

for y=1:m
    for x=1:n
        if (b7(y,x)==1)
            dy=y;
            break
        end
    end
end


for x=1:n
    for y=1:m
        if (b7(y,x)==1)
            dx=x;
            break
        end
    end
end
