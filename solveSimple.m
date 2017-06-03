function x = solveSimple(v, C0)

r = size(v);
if r(1) == 1
    n = r(2);
else
    n = r(1);
end;

v0 = double(v(2:n));
x = zeros(1, n);
x(1:n-1) = linsolve(C0', v0')';
x(n) = 0;

end

