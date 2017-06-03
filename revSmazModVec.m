function R = revSmazModVec(S, k, border, mode)

S0 = double(S);
r = size(S0);

    C = ciklsmaz(k, r(2));
    if mode == 0
        d = makeNoSmall(fft(C(:, 1)), border);
    else
        d = interpolWithBorder(fft(C(:, 1)), border);
    end;
    C = Circulant(ifft(1./d));
    R = S0*C;


imshow(uint8(R));

end

