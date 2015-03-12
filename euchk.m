function [result]=euchk(im)
bw=im2bw(im);
eu=bweuler(bw);


if eu==1
    result='Character is either C,E,F,G,H,I,J,K,L,M,N,S,T,U,V,W,X,Y,Z';
elseif eu==0
    result='Character is either A,D,O,P,Q,R';
elseif eu==-1
    result='Character is B';
end
end