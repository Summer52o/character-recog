for i=1:length(freeman)-1
    if freeman(i)~= freeman(i+1)
        f=freeman(i);
        fedt=strcat(fedt,f);
    end
end
