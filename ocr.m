
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
plot(bo(:,2),bo(:,1),'r','LineWidth',1);
freeman='';
for i=1:length(bo)-1   % coz 
    r1=bo(i,1);
    c1=bo(i,2);
    r2=bo(i+1,1);
    c2=bo(i+1,2);
    
    dr=r2-r1;
    dc=c2-c1;
    if(dr==1 && dc==0)
        freeman=strcat(freeman,'0');
    elseif(dr==1 && dc==1)
        freeman=strcat(freeman,'1');
    elseif(dr==0 && dc==1)
        freeman=strcat(freeman,'2');
    elseif(dr==-1 && dc==1)
        freeman=strcat(freeman,'3');
    elseif(dr==-1 && dc==0)
        freeman=strcat(freeman,'4');
    elseif(dr==-1 && dc==-1)
        freeman=strcat(freeman,'5');
        elseif(dr==0 && dc==-1)
        freeman=strcat(freeman,'6');
        elseif(dr==1 && dc==-1)
        freeman=strcat(freeman,'7');
    end
    
end