function R = revSmaz(S, k)

S0 = double(S);
r = size(S);

if (gcd(k, r(2)) == 1)
    C = ciklsmaz(k, r(2));
    C = Circulant(revertcirculant(C(:, 1)));
    R = uint8(S0*C);
end;


end

