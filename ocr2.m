i1=imread('aletter.png');
[m,n,t]=size(i1);
bw=zeros(m,n);
for i=1:m
    for j=1:n
        if(i1(i,j,1)==237 && i1(i,j,2)==28 && i1(i,j,3)==36)
            bw(i,j)=1;
        end
    end
end

bwf=imfill(bw,'holes');
B=bwboundaries(bwf);
bo=B{1};
for i=231:-1:1
  plot(bo(i,2),bo(i,1),'g','LineWidth',3);
end
