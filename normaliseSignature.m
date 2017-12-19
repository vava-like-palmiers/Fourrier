function [N] = normaliseSignature(premiersCoeffs, Sign)

A = fft(Sign);

A = abs(A)/abs(A(1));

if premiersCoeffs>=size(A)
    N = A;
else
    N = A(1:premiersCoeffs);
end

end