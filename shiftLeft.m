function M = shiftLeft(m)
M = m;
r = size(M);
for i = 1:(r(2)-1)
    [M(:, i) M(:, i+1)] = swap(M(:, i), M(:, i+1));

end

