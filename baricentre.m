function [x,y] = baricentre(I)

[r,c] = find(I>0);

x=mean(c);
y=mean(r);

end