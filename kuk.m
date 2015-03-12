m=size(d2);
g='';
h='';
for i=1:m(2)-1
    if(d2(i)~=d2(i+1))
        g=strcat(g,d2(i));
    end
end
n=size(g);
 for i=1:n(2)-3
    if( (g(i)==g(i+2)) && (g(i+1)==g(i+3)) )
        g(i)=g(i+2);
        g(i+1)=g(i+3);
    end
 end