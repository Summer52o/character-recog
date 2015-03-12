%------------------------------------------------------------------
%--------------------READING SMALL CHARACTERS----------------------
%------------------------------------------------------------------

qqa=imread('za.png');
qqa=im2bw(qqa);
[m,n]=size(qqa);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqa(i,j)==1)
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
qqa=imcrop(qqa,[x1 y1 c d]);
qqa=imresize(qqa,[100,100]);

%------------------------------------------------------
qqb=imread('zb.png');
qqb=im2bw(qqb);
[m,n]=size(qqb);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqb(i,j)==1)
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
qqb=imcrop(qqb,[x1 y1 c d]);
qqb=imresize(qqb,[100,100]);

%--------------------------------------------------------

qqc=imread('zc.png');
qqc=im2bw(qqc);
[m,n]=size(qqc);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqc(i,j)==1)
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
qqc=imcrop(qqc,[x1 y1 c d]);
qqc=imresize(qqc,[100,100]);


%---------------------------------------------------------


qqd=imread('zd.png');
qqd=im2bw(qqd);
[m,n]=size(qqd);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqd(i,j)==1)
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
qqd=imcrop(qqd,[x1 y1 c d]);
qqd=imresize(qqd,[100,100]);


%---------------------------------------------------------

qqe=imread('ze.png');
qqe=im2bw(qqe);
[m,n]=size(qqe);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqe(i,j)==1)
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
qqe=imcrop(qqe,[x1 y1 c d]);
qqe=imresize(qqe,[100,100]);

%----------------------------------------------------

qqf=imread('zf.png');
qqf=im2bw(qqf);
[m,n]=size(qqf);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqf(i,j)==1)
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
qqf=imcrop(qqf,[x1 y1 c d]);
qqf=imresize(qqf,[100,100]);


%-------------------------------------------------------

qqg=imread('zg.png');
qqg=im2bw(qqg);
[m,n]=size(qqg);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqg(i,j)==1)
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
qqg=imcrop(qqg,[x1 y1 c d]);
qqg=imresize(qqg,[100,100]);

%--------------------------------------------------------

qqh=imread('zh.png');
qqh=im2bw(qqh);
[m,n]=size(qqh);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqh(i,j)==1)
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
qqh=imcrop(qqh,[x1 y1 c d]);
qqh=imresize(qqh,[100,100]);

%-------------------------------------------------

qqi=imread('zi.png');
qqi=im2bw(qqi);
[m,n]=size(qqi);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqi(i,j)==1)
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
qqi=imcrop(qqi,[x1 y1 c d]);
qqi=imresize(qqi,[100,100]);

%-----------------------------------------



qqj=imread('zj.png');
qqj=im2bw(qqj);
[m,n]=size(qqj);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqj(i,j)==1)
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
qqj=imcrop(qqj,[x1 y1 c d]);
qqj=imresize(qqj,[100,100]);

%-----------------------------------------


qqk=imread('zk.png');
qqk=im2bw(qqk);
[m,n]=size(qqk);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqk(i,j)==1)
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
qqk=imcrop(qqk,[x1 y1 c d]);
qqk=imresize(qqk,[100,100]);

%-----------------------------------------


qql=imread('zl.png');
qql=im2bw(qql);
[m,n]=size(qql);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qql(i,j)==1)
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
qql=imcrop(qql,[x1 y1 c d]);
qql=imresize(qql,[100,100]);

%-----------------------------------------


qqm=imread('zm.png');
qqm=im2bw(qqm);
[m,n]=size(qqm);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqm(i,j)==1)
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
qqm=imcrop(qqm,[x1 y1 c d]);
qqm=imresize(qqm,[100,100]);

%-----------------------------------------


qqn=imread('zn.png');
qqn=im2bw(qqn);
[m,n]=size(qqn);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqn(i,j)==1)
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
qqn=imcrop(qqn,[x1 y1 c d]);
qqn=imresize(qqn,[100,100]);

%-----------------------------------------


qqo=imread('zo.png');
qqo=im2bw(qqo);
[m,n]=size(qqo);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqo(i,j)==1)
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
qqo=imcrop(qqo,[x1 y1 c d]);
qqo=imresize(qqo,[100,100]);

%-----------------------------------------



qqp=imread('zp.png');
qqp=im2bw(qqp);
[m,n]=size(qqp);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqp(i,j)==1)
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
qqp=imcrop(qqp,[x1 y1 c d]);
qqp=imresize(qqp,[100,100]);

%-----------------------------------------




qqq=imread('zq.png');
qqq=im2bw(qqq);
[m,n]=size(qqq);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqq(i,j)==1)
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
qqq=imcrop(qqq,[x1 y1 c d]);
qqq=imresize(qqq,[100,100]);

%-----------------------------------------



qqr=imread('zr.png');
qqr=im2bw(qqr);
[m,n]=size(qqr);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqr(i,j)==1)
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
qqr=imcrop(qqr,[x1 y1 c d]);
qqr=imresize(qqr,[100,100]);

%-----------------------------------------



qqs=imread('zs.png');
qqs=im2bw(qqs);
[m,n]=size(qqs);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqs(i,j)==1)
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
qqs=imcrop(qqs,[x1 y1 c d]);
qqs=imresize(qqs,[100,100]);

%-----------------------------------------


qqt=imread('zt.png');
qqt=im2bw(qqt);
[m,n]=size(qqt);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqt(i,j)==1)
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
qqt=imcrop(qqt,[x1 y1 c d]);
qqt=imresize(qqt,[100,100]);

%-----------------------------------------


qqu=imread('zu.png');
qqu=im2bw(qqu);
[m,n]=size(qqu);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqu(i,j)==1)
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
qqu=imcrop(qqu,[x1 y1 c d]);
qqu=imresize(qqu,[100,100]);

%-----------------------------------------



qqv=imread('zv.png');
qqv=im2bw(qqv);
[m,n]=size(qqv);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqv(i,j)==1)
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
qqv=imcrop(qqv,[x1 y1 c d]);
qqv=imresize(qqv,[100,100]);

%-----------------------------------------



qqw=imread('zw.png');
qqw=im2bw(qqw);
[m,n]=size(qqw);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqw(i,j)==1)
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
qqw=imcrop(qqw,[x1 y1 c d]);
qqw=imresize(qqw,[100,100]);

%-----------------------------------------



qqx=imread('zx.png');
qqx=im2bw(qqx);
[m,n]=size(qqx);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqx(i,j)==1)
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
qqx=imcrop(qqx,[x1 y1 c d]);
qqx=imresize(qqx,[100,100]);

%-----------------------------------------


qqy=imread('zy.png');
qqy=im2bw(qqy);
[m,n]=size(qqy);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqy(i,j)==1)
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
qqy=imcrop(qqy,[x1 y1 c d]);
qqy=imresize(qqy,[100,100]);

%-----------------------------------------


qqz=imread('zz.png');
qqz=im2bw(qqz);
[m,n]=size(qqz);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qqz(i,j)==1)
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
qqz=imcrop(qqz,[x1 y1 c d]);
qqz=imresize(qqz,[100,100]);


%-------------------------------------------------------------
%----------------------READING CAPITAL LETTERS----------------
%-------------------------------------------------------------


qa=imread('A.png');
qa=im2bw(qa);
[m,n]=size(qa);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qa(i,j)==1)
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
qa=imcrop(qa,[x1 y1 c d]);
qa=imresize(qa,[100,100]);

%------------------------------------------------------
qb=imread('B.png');
qb=im2bw(qb);
[m,n]=size(qb);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qb(i,j)==1)
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
qb=imcrop(qb,[x1 y1 c d]);
qb=imresize(qb,[100,100]);

%--------------------------------------------------------

qc=imread('C.png');
qc=im2bw(qc);
[m,n]=size(qc);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qc(i,j)==1)
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
qc=imcrop(qc,[x1 y1 c d]);
qc=imresize(qc,[100,100]);


%---------------------------------------------------------


qd=imread('D.png');
qd=im2bw(qd);
[m,n]=size(qd);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qd(i,j)==1)
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
qd=imcrop(qd,[x1 y1 c d]);
qd=imresize(qd,[100,100]);


%---------------------------------------------------------

qe=imread('E.png');
qe=im2bw(qe);
[m,n]=size(qe);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qe(i,j)==1)
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
qe=imcrop(qe,[x1 y1 c d]);
qe=imresize(qe,[100,100]);

%----------------------------------------------------

qf=imread('F.png');
qf=im2bw(qf);
[m,n]=size(qf);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qf(i,j)==1)
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
qf=imcrop(qf,[x1 y1 c d]);
qf=imresize(qf,[100,100]);


%-------------------------------------------------------

qg=imread('G.png');
qg=im2bw(qg);
[m,n]=size(qg);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qg(i,j)==1)
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
qg=imcrop(qg,[x1 y1 c d]);
qg=imresize(qg,[100,100]);

%--------------------------------------------------------

qh=imread('H.png');
qh=im2bw(qh);
[m,n]=size(qh);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qh(i,j)==1)
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
qh=imcrop(qh,[x1 y1 c d]);
qh=imresize(qh,[100,100]);

%-------------------------------------------------

qi=imread('I.png');
qi=im2bw(qi);
[m,n]=size(qi);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qi(i,j)==1)
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
qi=imcrop(qi,[x1 y1 c d]);
qi=imresize(qi,[100,100]);

%-----------------------------------------



qj=imread('J.png');
qj=im2bw(qj);
[m,n]=size(qj);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qj(i,j)==1)
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
qj=imcrop(qj,[x1 y1 c d]);
qj=imresize(qj,[100,100]);

%-----------------------------------------


qk=imread('K.png');
qk=im2bw(qk);
[m,n]=size(qk);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qk(i,j)==1)
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
qk=imcrop(qk,[x1 y1 c d]);
qk=imresize(qk,[100,100]);

%-----------------------------------------


ql=imread('L.png');
ql=im2bw(ql);
[m,n]=size(ql);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (ql(i,j)==1)
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
ql=imcrop(ql,[x1 y1 c d]);
ql=imresize(ql,[100,100]);

%-----------------------------------------


qm=imread('M.png');
qm=im2bw(qm);
[m,n]=size(qm);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qm(i,j)==1)
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
qm=imcrop(qm,[x1 y1 c d]);
qm=imresize(qm,[100,100]);

%-----------------------------------------


qn=imread('N.png');
qn=im2bw(qn);
[m,n]=size(qn);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qn(i,j)==1)
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
qn=imcrop(qn,[x1 y1 c d]);
qn=imresize(qn,[100,100]);

%-----------------------------------------


qo=imread('O.png');
qo=im2bw(qo);
[m,n]=size(qo);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qo(i,j)==1)
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
qo=imcrop(qo,[x1 y1 c d]);
qo=imresize(qo,[100,100]);

%-----------------------------------------



qp=imread('P.png');
qp=im2bw(qp);
[m,n]=size(qp);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qp(i,j)==1)
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
qp=imcrop(qp,[x1 y1 c d]);
qp=imresize(qp,[100,100]);

%-----------------------------------------




qq=imread('Q.png');
qq=im2bw(qq);
[m,n]=size(qq);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qq(i,j)==1)
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
qq=imcrop(qq,[x1 y1 c d]);
qq=imresize(qq,[100,100]);

%-----------------------------------------



qr=imread('R.png');
qr=im2bw(qr);
[m,n]=size(qr);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qr(i,j)==1)
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
qr=imcrop(qr,[x1 y1 c d]);
qr=imresize(qr,[100,100]);

%-----------------------------------------



qs=imread('S.png');
qs=im2bw(qs);
[m,n]=size(qs);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qs(i,j)==1)
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
qs=imcrop(qs,[x1 y1 c d]);
qs=imresize(qs,[100,100]);

%-----------------------------------------


qt=imread('T.png');
qt=im2bw(qt);
[m,n]=size(qt);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qt(i,j)==1)
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
qt=imcrop(qt,[x1 y1 c d]);
qt=imresize(qt,[100,100]);

%-----------------------------------------


qu=imread('U.png');
qu=im2bw(qu);
[m,n]=size(qu);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qu(i,j)==1)
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
qu=imcrop(qu,[x1 y1 c d]);
qu=imresize(qu,[100,100]);

%-----------------------------------------



qv=imread('V.png');
qv=im2bw(qv);
[m,n]=size(qv);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qv(i,j)==1)
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
qv=imcrop(qv,[x1 y1 c d]);
qv=imresize(qv,[100,100]);

%-----------------------------------------



qw=imread('W.png');
qw=im2bw(qw);
[m,n]=size(qw);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qw(i,j)==1)
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
qw=imcrop(qw,[x1 y1 c d]);
qw=imresize(qw,[100,100]);

%-----------------------------------------



qx=imread('X.png');
qx=im2bw(qx);
[m,n]=size(qx);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qx(i,j)==1)
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
qx=imcrop(qx,[x1 y1 c d]);
qx=imresize(qx,[100,100]);

%-----------------------------------------


qy=imread('Y.png');
qy=im2bw(qy);
[m,n]=size(qy);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qy(i,j)==1)
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
qy=imcrop(qy,[x1 y1 c d]);
qy=imresize(qy,[100,100]);

%-----------------------------------------


qz=imread('Z.png');
qz=im2bw(qz);
[m,n]=size(qz);
y2=1;
x2=1;
y1=m;
x1=n;
%then crop and resize the image

for i=1:m
    for j=1:n
        if (qz(i,j)==1)
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
qz=imcrop(qz,[x1 y1 c d]);
qz=imresize(qz,[100,100]);

%-----------------------------------------











%--------- CREATE A CELL ARRAY CONTAINING BW VALUES OF ALPHABETS---|

details={qqa;qqb;qqc;qqd;qqe;qqf;qqg;qqh;qqi;qqj;qqk;qql;qqm;qqn;qqo;qqp;qqq;qqr;qqs;qqt;qqu;qqv;qqw;qqx;qqy;qqz;qa;qb;qc;qd;qe;qf;qg;qh;qi;qj;qk;ql;qm;qn;qo;qp;qq;qr;qs;qt;qu;qv;qw;qx;qy;qz};

%------------------------------------------------------------------|