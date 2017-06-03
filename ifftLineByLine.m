function [A LF] = ifftLineByLine(F, delta)

r = size(F);

for i = 1:r(1)
    LF(i, :) = (F(i, :) + delta)';
    A(i, :) = ifft(LF(i, :))';
end;


end

