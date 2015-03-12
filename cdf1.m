n=91645;
d=0;
for m=1:n
s=0;
f=floor(m/2);
for i=2:f

   if(mod(m,i)==0)
        break
    else
        s=s+1;
    end
end
if(s==f-1)
   d=d+m;
end
end
display(d)