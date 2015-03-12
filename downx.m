function[dx]=downx(b7)
[m,n]=size(b7);
for x=1:n
    for y=1:m
        if (b7(y,x)==1)
            dx=x;
            break
        end
    end
end
end
