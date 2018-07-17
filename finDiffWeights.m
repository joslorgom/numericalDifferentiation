function [w, w0] = finDiffWeights(n, k)

if iscolumn(k)
    k = k';
end

N = length(k);
A = zeros(N);
b = zeros(N, 1);

for i = 1:N
    A(i, :) = k.^i;
end

b(n) = factorial(n);

w = A\b;
w0 = -sum(w);

end