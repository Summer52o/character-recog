%----This rectifies the presence of pepper noises and the i & j dot errors ---%
while y<=n
    
    chk=imcrop(bw,[y,x,t,m]);
    chk=imresize(chk,[100,100]);
    y=y+t;
    
err=zeros(1,52);      %---the error array

%-- checking goes here


for k=1:52
    for i=1:100
            for j=1:100
                t1=details{k,1};
                if (chk(i,j)~=t1(i,j))
                    err(1,k)=err(1,k)+1;
                end
            end
    end
end

%-----now get the least error

l=err(1,1);
for i=1:52
    if(l>=err(1,i))
        l=err(1,i);
        ch=i;
    end
end


base=[ 'a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 'l' 'm' 'n' 'o' 'p' 'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y' 'z' 'A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'i' 'J' 'K' 'L' 'M' 'N' 'O' 'P' 'Q' 'R' 'S' 'T' 'U' 'V' 'W' 'X' 'Y' 'Z'];

    
answ=strcat(answ,base(ch));
    
end
display(answ);



x2=1;
y2=1;
x1=100;
y1=100;
%then crop and resize the image

for i=1:100
    for j=1:100
        if (chk(i,j)==1)
            if i>x2
                x2=i;
            end
            if j>y2
                y2=j;
            end
            if i<x1
                x1=i;
            end
            if j<y1
                y1=j;
            end
        end
    end
end

d=x2-x1;
c=y2-y1;
chk=imcrop(chk,[y1 x1 c d]);
chk=imresize(chk,[100,100]);
