b=imread('bletter.png');
bw=im2bw(b);
bwf=imfill(bw,'holes');
B=bwboundaries(bwf);
bo=B{1};
plot(bo(:,2),bo(:,1),'g','LineWidth',3);
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
fedt='';
for i=1:length(freeman)-1
    if freeman(i)~= freeman(i+1)
        f=freeman(i);
        fedt=strcat(fedt,f);
    end
end

    