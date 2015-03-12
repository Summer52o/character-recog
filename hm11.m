im=imread('A.png');
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

[g,h]=size(bw);
X=g*(1+g)/2.0;
Y=h*(1+h)/2.0;
u00=0;
u11=0;
u21=0;
u12=0;
u20=0;
u02=0;
u30=0;
u03=0;

for i=1:g
    for j=1:h
        u00=u00+bw(i,j);
    end
end

for i=1:g
    for j=1:h
        u11=u11+((i-X)^1)*((j-Y)^1)*bw(i,j);
    end
end
y11=2;
n11=u11/((u00)^y11);

for i=1:g
    for j=1:h
        u20=u20+((i-X)^2)*((j-Y)^0)*bw(i,j);
    end
end
y20=2;
n20=u20/((u00)^y20);


for i=1:g
    for j=1:h
        u02=u02+((i-X)^0)*((j-Y)^2)*bw(i,j);
    end
end
y02=2;
n02=u02/((u00)^y02);

for i=1:g
    for j=1:h
        u30=u30+((i-X)^3)*((j-Y)^0)*bw(i,j);
    end
end
y30=5/2.0;
n30=u30/((u00)^y30);

for i=1:g
    for j=1:h
        u03=u03+((i-X)^0)*((j-Y)^3)*bw(i,j);
    end
end
y03=5/2.0;
n03=u03/((u00)^y03);

for i=1:g
    for j=1:h
        u21=u21+((i-X)^2)*((j-Y)^1)*bw(i,j);
    end
end
y21=5/2.0;
n21=u21/((u00)^y21);

for i=1:g
    for j=1:h
        u12=u12+((i-X)^1)*((j-Y)^2)*bw(i,j);
    end
end
y12=5/2.0;
n12=u12/((u00)^y12);


f1=n20+n02;
f2=(n20-n02)^2 + 4*(n11^2);
f3=(n30-3*n12)^2+(3*n21-u03)^2;
f4=(n30+n12)^2+(n21+u03)^2;
f5=(n30-3*n12)*(n30+n12)*( (n30+n12)^2 - 3*(n21+n03)^2) + (3*n21 - n03)*(n03+n21)*( 3*(n12+n30)^2 - (n03+n21)^2);
f6=(n20-n02)*((n30+n12)^2-(n21+n03)^2)+4*n11*(n30+n12)*(n21+n03);
f7=(3*n21-n03)*(n30+n12)*((n30+n12)^2- 3*(n21+n03)^2)-(n30-3*n12)*(n21+n03)*(3*(n30+n12)^2 -(n21+n03)^2);