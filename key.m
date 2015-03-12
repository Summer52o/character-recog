test=imread('tough1test.png');

%---------------------------------------------------------
%                 DATABASE STARTS
%------------------------------------------------------------

wzb=imread('inzb.png');
wzb=im2bw(wzb);
[m,n]=size(wzb);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (wzb(i,j)==1)
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
wzb=imcrop(wzb,[x1 y1 c d]);
wzb=imresize(wzb,[100,100]);



wza=imread('inza.png');
wza=im2bw(wza);
[m,n]=size(wza);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (wza(i,j)==1)
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
wza=imcrop(wza,[x1 y1 c d]);
wza=imresize(wza,[100,100]);



wze=imread('inze.png');
wze=im2bw(wze);
[m,n]=size(wze);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (wze(i,j)==1)
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
wze=imcrop(wze,[x1 y1 c d]);
wze=imresize(wze,[100,100]);



wq=imread('inQ.png');
wq=im2bw(wq);
[m,n]=size(wq);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (wq(i,j)==1)
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
wq=imcrop(wq,[x1 y1 c d]);
wq=imresize(wq,[100,100]);



wo=imread('inO.png');
wo=im2bw(wo);
[m,n]=size(wo);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (wo(i,j)==1)
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
wo=imcrop(wo,[x1 y1 c d]);
wo=imresize(wo,[100,100]);



wd=imread('inD.png');
wd=im2bw(wd);
[m,n]=size(wd);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (wd(i,j)==1)
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
wd=imcrop(wd,[x1 y1 c d]);
wd=imresize(wd,[100,100]);



wb=imread('inB.png');
wb=im2bw(wb);
[m,n]=size(wb);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (wb(i,j)==1)
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
wb=imcrop(wb,[x1 y1 c d]);
wb=imresize(wb,[100,100]);



wa=imread('inA.png');
wa=im2bw(wa);
[m,n]=size(wa);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (wa(i,j)==1)
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
wa=imcrop(wa,[x1 y1 c d]);
wa=imresize(wa,[100,100]);
%--------------------------------------------------------------

indetail={wa;wb;wd;wo;wq;wze;wza;wzb};

%--------------------------------------------------------------



%------------------------------------------------------
%-------------program starts---------------------------



[m,n,t]=size(test);
f=0;
bw=zeros(m,n);


for i=1:m
    for j=1:n
        if(test(i,j,1)==255 && test(i,j,2)==255 && test(i,j,3)==255 )
            bw(i,j)=1;
        end
    end
end  %--- thiss converts to b/w

for i=1:m
    for j=1:n
        if(bw(i,j)==1)
            bw(i,j)=0;
        else
            bw(i,j)=1;
        end
    end
end   %------this convert to w/b

[L,obj]=bwlabel(bw);


ar=regionprops(L,'Area');

mx=ar(1).Area;
for i=1:obj
    if (ar(i).Area >=mx)
        mx=ar(i).Area;
    end
end             %-----


for r=1:obj
    for i=1:m
        for j=1:n
            if((ar(r).Area)==mx)
                if(L(i,j)==r)
                    L(i,j)=0;
                end
            end
        end
    end
end                 %---this removes the white background

%-------------------------------------------------------------
%-------------------------------------------------------------

[L,obj]=bwlabel(L);
inans='';
for o=1:obj
    
    chk=zeros(m,n);
    for k=1:m
        for p=1:n
            if(L(k,p)==o)
                chk(k,p)=1;
            end
        end
    end
x2=1;
y2=1;
x1=m;
y1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
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

err=zeros(1,8);      %---the error array

%-- checking goes here


for k=1:8
    for i=1:100
            for j=1:100
                t1=indetail{k,1};
                if (chk(i,j)~=t1(i,j))
                    err(1,k)=err(1,k)+1;
                end
            end
    end
end

%-----now get the least error

l=err(1,1);
for i=1:8
    if(l>=err(1,i))
        l=err(1,i);
        ch=i;
    end
end


base=[ 'A' 'B' 'D' 'o' 'Q' 'e' 'a' 'b'];

    
inans=strcat(inans,base(ch));
    
end


%-------------------------------------------------------------
%----------------end-------------------------------------------


display(inans);

    