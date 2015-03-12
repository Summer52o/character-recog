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
qa=imresize(qa,[50,50]);

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
qb=imresize(qb,[50,50]);

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
qc=imresize(qc,[50,50]);


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
qd=imresize(qd,[50,50]);


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
qe=imresize(qe,[50,50]);

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
qf=imresize(qf,[50,50]);


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
qg=imresize(qg,[50,50]);

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
qh=imresize(qh,[50,50]);

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
qi=imresize(qi,[50,50]);

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
qj=imresize(qj,[50,50]);

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
qk=imresize(qk,[50,50]);

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
ql=imresize(ql,[50,50]);

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
qm=imresize(qm,[50,50]);

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
qn=imresize(qn,[50,50]);

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
qo=imresize(qo,[50,50]);

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
qp=imresize(qp,[50,50]);

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
qq=imresize(qq,[50,50]);

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
qr=imresize(qr,[50,50]);

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
qs=imresize(qs,[50,50]);

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
qt=imresize(qt,[50,50]);

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
qu=imresize(qu,[50,50]);

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
qv=imresize(qv,[50,50]);

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
qw=imresize(qw,[50,50]);

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
qx=imresize(qx,[50,50]);

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
qy=imresize(qy,[50,50]);

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
qz=imresize(qz,[50,50]);

%-----------------------------------------
