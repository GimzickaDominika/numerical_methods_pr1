function [wynik] = metodaGoertzela(wspolczynniki, t)
% jest to funkcja służąca do obliczania wielomianu trygonometrycznego
% WE:
% wspolczynniki - lista współczynników, gdzie pierwszy element to a₁, drugi to a₂, ..., a ostatni to aₙ
% t - argumentt funkcji f
% WY:
% wynik - wartośc funkcji f(t)

n = length(wspolczynniki);
x = cos(t);
y = sin(t);
z = complex(x, y);   % z = cos(t) + isin(t)

% poniżej rozpatrzone są "szczególne" przypadki współczynników:
% 1. lista współczynników jest pusta
if n==0
    error("Lista współczynników wielomianu jest pusta")
end
% 2. lista współczynników zawiera tylko 1 element
if n==1
    wynik = wspolczynniki(1)*y;  % wynik=a₁*sin(t)
end

%poniżej implementacja metody, gdy lista współczynnikó jest dłuższa niż 1
p = 2*x;
q = -(x^2 + y^2);
b = zeros(n+1, 1);
b(n) = wspolczynniki(n);
for i = 1 : n-1
    j = n-i;
    b(j) = wspolczynniki(j) + p*b(j+1) + q*b(j+2);
end
wynik = y * b(1);  %wynik = sin(t)*b₁

end