test=imread('zi.png');
[m,n,t]=size(test);
f=0;
bw=zeros(m,n);
for i=1:m
    for j=1:n
        if(test(i,j,1)==255 && test(i,j,2)==255 && test(i,j,3)==255 )
            bw(i,j)=1;
        end
    end
end

answ='';
%---------LABELLING GOES HERE--------
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
x2=1;
y2=1;
x1=x;
y1=y;
%then crop and resize the image

for i=1:x
    for j=1:y
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


base=[ 'a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 'l' 'm' 'n' 'o' 'p' 'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y' 'z' 'A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K' 'L' 'M' 'N' 'O' 'P' 'Q' 'R' 'S' 'T' 'U' 'V' 'W' 'X' 'Y' 'Z'];

answ=strcat(answ,base(ch));
end

answer='';
[p,k]=size(answ);

for i=1:k
    if (answ(1,i)~='l')
        answer=strcat(answer,answ(1,i));
    else
        f=f+1;
    end
end

d=floor(f/2);
for i=1:d
    answer=strcat(answer,'i');
end
    
if(mod(f,2)~=0)
    answer=strcat(answer,'l');
end

disp(answer)