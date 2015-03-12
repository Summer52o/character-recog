tic
load alphabase
im=imread('aa5.png');
bw=im2bw(im);
[m,n]=size(bw);

x2=1;
y2=1;
x1=m;
y1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (bw(i,j)==1)
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
bw=imcrop(bw,[y1 x1 c d]);
bw=imresize(bw,[80,240]);
[m,n]=size(bw);
t=floor(n/8);
x=1;
y=1;

%----------------------------------

answ='';
while y<=n
    
    chk=imcrop(bw,[y,x,t,m]);
    chk=imresize(chk,[100,100]);
    imshow(chk);
    y=y+t;
    x2=1;

    
%---------------------------------
    
    %-----------RESIZE AND CROP THE CROPPED PORTIONS    
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


  
err=zeros(1,26);      %---the error array

%-- checking goes here


for k=1:26
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
for i=1:26
    if(l>=err(1,i))
        l=err(1,i);
        ch=i;
    end
end


base=[ 'a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 'l' 'm' 'n' 'o' 'p' 'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y' 'z'];

    
answ=strcat(answ,base(ch));
    
end
display(answ);
toc