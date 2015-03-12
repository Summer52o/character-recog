function [uy]=uppery(b7)
[m,n]=size(b7);
for y=m:-1:1
    for x=1:n
        if (b7(y,x)==1)
            uy=y;
            break
        end
    end
end
end
