function [fndiff] = ndiff(f, n, z0, r, m, relTol)

fndiff = adaptquad(@(x) f(z0 + r*exp(1i*2*pi*x)).*cos(n*2*pi*x), 0, 1, m, relTol);

fndiff = 2*factorial(n)/r^n*fndiff;

if abs(imag(fndiff)) <= eps
    fndiff = real(fndiff);
end

if abs(real(fndiff)) <= eps
    fndiff = 1i*imag(fndiff);
end

end