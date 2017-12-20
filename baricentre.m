function [x,y] = baricentre(I)

[r,c] = find(I>0);

x=mean(r);
y=mean(c);

end