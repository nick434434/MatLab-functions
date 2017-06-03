function [R A] = recSmazGcd2(S, k)

S0 = double(S);
r = size(S0);

A = zeros(r(1), r(2));
for i = 1:r(1)
    A(i, :) = solveSmazGcd2(S(i, :), k);
end;

u = zeros(1, r(2));
u(1) = -1;
for i = 2:r(2)
    u(i) = u(i - 1)*(-1);
end;
A = uint8(A);
alpha = zeros(1, r(1));
R = zeros(r(1), r(2));
for i = 1:r(1)
    t = A(i, 1);
    M = t;
    m = t - 255;
        
    b = 1;
    for j = 2:r(2)
        t = -b*A(i, j);
        m = min(m, t - (1 - b)/2 * 255);
        M = max(M, t + (1 + b)/2 * 255);
        b = b * -1;
    end;
    alpha(i) = (m + M)/2;
    R(i, :) = double(A(i, :)) + alpha(i)*u;
end;


end

