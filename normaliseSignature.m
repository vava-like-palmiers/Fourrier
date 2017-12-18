function [N] = normaliseSignature(premiersCoeffs, Coord)

A = ttf(Coord);

A = abs(A)/abs(A(1));

N = A(1:premiersCoeffs);

end