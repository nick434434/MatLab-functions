function M = makeRawMatrix(S, k)

S0 = double(S);
r = size(S0);

C = ciklsmaz(k, r(2));
d = fft(C(:, 1));

for i = 1:r(1)
    M(i, :) = makeRawLine(S, d, i);
end;


end

