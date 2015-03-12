function[dy]=downy(b7)
[m,n]=size(b7);
for y=1:m
    for x=1:n
        if (b7(y,x)==1)
            dy=y;
            break
        end
    end
end
end
