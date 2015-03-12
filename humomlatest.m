im=imread('A72RD.png');
%-- convert the image to bw
[m,n,t]=size(im);
bw=zeros(m,n);
for i=1:m
    for j=1:n
        if(im(i,j,1)==255 && im(i,j,2)==255 && im(i,j,3)==255)
            bw(i,j)=1;
        end
    end
end
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

d=y2-y1;              %-------for cropping the image using its width and height
c=x2-x1;
bw=imcrop(bw,[x1 y1 c d]);
bw=imresize(bw,[100,100]);    %--------for making all the images in consideration of same size, for these to be easy to compare.


%--get the labeled matrix
B=bwlabel(bw);
[g,h]=size(B);

%--------the moments formulation starts here
u00=0;
m10=0;
m01=0;
m00=0;
u11=0;
u21=0;
u12=0;
u20=0;
u02=0;
u30=0;
u03=0;

for i=1:g
    for j=1:h
        m00=m00+B(i,j);
    end
end

for i=1:g
    for j=1:h
        m10=m10+i*B(i,j);
    end
end

for i=1:g
    for j=1:h
        m01=m01+j*B(i,j);
    end
end

X=m10/m00;
Y=m01/m00;

for i=1:g
    for j=1:h
        u00=u00+B(i,j);
    end
end

for i=1:g
    for j=1:h
        u11=u11+((i-X)^1)*((j-Y)^1)*B(i,j);
    end
end
y11=2;
n11=u11/((u00)^y11);

for i=1:g
    for j=1:h
        u20=u20+((i-X)^2)*((j-Y)^0)*B(i,j);
    end
end
y20=2;
n20=u20/((u00)^y20);


for i=1:g
    for j=1:h
        u02=u02+((i-X)^0)*((j-Y)^2)*B(i,j);
    end
end
y02=2;
n02=u02/((u00)^y02);

for i=1:g
    for j=1:h
        u30=u30+((i-X)^3)*((j-Y)^0)*B(i,j);
    end
end
y30=5/2;
n30=u30/((u00)^y30);

for i=1:g
    for j=1:h
        u03=u03+((i-X)^0)*((j-Y)^3)*B(i,j);
    end
end
y03=5/2;
n03=u03/((u00)^y03);

for i=1:g
    for j=1:h
        u21=u21+((i-X)^2)*((j-Y)^1)*B(i,j);
    end
end
y21=5/2;
n21=u21/((u00)^y21);

for i=1:g
    for j=1:h
        u12=u12+((i-X)^1)*((j-Y)^2)*B(i,j);
    end
end
y12=5/2;
n12=u12/((u00)^y12);

%---- these are the seven moment invariants

f1=n20+n02;
f2=(n20-n02)^2 + 4*(n11^2);
f3=(n30-3*n12)^2+(3*n21-u03)^2;
f4=(n30+n12)^2+(n21+u03)^2;
f5=(n30-3*n12)*(n30+n12)*( (n30+n12)^2 - 3*(n21+n03)^2) + (3*n21 - n03)*(n03+n21)*( 3*(n12+n30)^2 - (n03+n21)^2);
f6=(n20-n02)*((n30+n12)^2-(n21+n03)^2)+4*n11*(n30+n12)*(n21+n03);
f7=(3*n21-n03)*(n30+n12)*((n30+n12)^2- 3*(n21+n03)^2)-(n30-3*n12)*(n21+n03)*(3*(n30+n12)^2 -(n21+n03)^2);




