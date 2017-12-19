function [N] = normaliseSignature(premiersCoeffs, Coord)

A = fft(Coord);

A = abs(A)/abs(A(1));

if premiersCoeffs>=size(A)
    N = A;
else
    N = A(1:premiersCoeffs);
end

end