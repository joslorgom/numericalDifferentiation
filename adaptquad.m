function [S] = adaptquad(f, a, b, n, relTol)

% p = max(min([0.8, rand]), 0.2);
% p = 0.5;
% m = a + (b-a)*p;

m1 = a + (b-a)/3;
m2 = m1 + (b-a)/3;

switch n
    case 0
        wi = [1, 1];
        ti = [-1, 1]';
    case 1
        wi = 2;
        ti = 0;
    case 2
        wi = [1, 1];
        ti = [-1, 1]'/sqrt(3);
    case 3
        wi = [5, 8, 5]/9;
        ti = [-sqrt(3/5), 0, sqrt(3/5)]';
    case 4
        wi = [(18+sqrt(30))/36, (18+sqrt(30))/36, ...
            (18-sqrt(30))/36, (18-sqrt(30))/36];
        ti = [-sqrt((3-2*sqrt(6/5))/7), sqrt((3-2*sqrt(6/5))/7), ...
            -sqrt((3+2*sqrt(6/5))/7), sqrt((3+2*sqrt(6/5))/7)]';
    case 5
        wi = [128/225, (322+13*sqrt(70))/900, (322+13*sqrt(70))/900, ...
            (322-13*sqrt(70))/900, (322-13*sqrt(70))/900];
        ti = [0, sqrt(5-2*sqrt(10/7))/3, -sqrt(5-2*sqrt(10/7))/3, ...
            sqrt(5+2*sqrt(10/7))/3, -sqrt(5+2*sqrt(10/7))/3]';
end

S1 = 0.5*(b-a)*(wi*f((b-a)/2*ti + (a+b)/2));

%S2 = 0.5*(m-a)*(wi*f((m-a)/2*ti + (a+m)/2)) + ...
%    0.5*(b-m)*(wi*f((b-m)/2*ti + (m+b)/2));

S2 = 0.5*(m1-a)*(wi*f((m1-a)/2*ti + (a+m1)/2)) + ...
    0.5*(b-m2)*(wi*f((b-m2)/2*ti + (m2+b)/2)) + ...
    0.5*(m2-m1)*(wi*f((m2-m1)/2*ti + (m1+m2)/2));

if abs(S2 - S1)/abs(S2) > relTol
    %S = adaptquad(f, a, m, n, relTol) + adaptquad(f, m, b, n, relTol);
    S = adaptquad(f, a, m1, n, relTol) + adaptquad(f, m1, m2, n, relTol) + ...
        adaptquad(f, m2, b, n, relTol);
else
    S = S2;
end

end