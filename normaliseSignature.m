function [N] = normaliseSignature(premiersCoeffs, Coord)

A = ttf(Coord);

A = A/A(1);

N = A(1:premiersCoeffs);

end