function A = ifftLineByLine(F, delta)

r = size(F);

for i = 1:r(1)
    LF = (F(i, :) + delta)';
    A(i, :) = ifft(LF)';
end;


end

