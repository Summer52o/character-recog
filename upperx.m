function [ux]=upperx(b7)
[m,n]=size(b7);
for x=n:-1:1
    for y=1:m
        if (b7(y,x)==1)
            ux=x;
            break
        end
    end
end
end
