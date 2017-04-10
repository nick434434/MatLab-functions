function R = revSmazModVec(S, k, border)

S0 = double(S);
r = size(S0);

if (gcd(k, r(2)) == 1)
    C = ciklsmaz(k, r(2));
    d = makeNoSmall(fft(C(:, 1)), border);
    C = Circulant(ifft(1./d));
    R = S0*C;
else
    R = S;
end;

imshow(uint8(R));

end

