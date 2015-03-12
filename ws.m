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

%---------LABELLING GOES HERE--------
[L,obj]=bwlabel(bw);
cc = bwconncomp(bw);


y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (bw(i,j)==1)
            if i>y2
                y2=i;
            end
            if j>x2
                x2=j;
            end
            if i<y1
                y1=i;
            end
            if j<x1
                x1=j;
            end
        end
    end
end

d=y2-y1;
c=x2-x1;
bw=imcrop(bw,[x1 y1 c d]);
bw=imresize(bw,[100,100]);


err=zeros(1,52);      %---the error array

%-- checking goes here


for k=1:52
    for i=1:100
            for j=1:100
                t1=details{k,1};
                if (bw(i,j)~=t1(i,j))
                    err(1,k)=err(1,k)+1;
                end
            end
    end
end

%-----now get the least error

l=err(1,1);
for i=1:52
    if(l>err(1,i))
        l=err(1,i);
        ch=i;
    end
end


base=[ 'a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 'l' 'm' 'n' 'o' 'p' 'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y' 'z' 'A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K' 'L' 'M' 'N' 'O' 'P' 'Q' 'R' 'S' 'T' 'U' 'V' 'W' 'X' 'Y' 'Z'];

answ=base(ch);