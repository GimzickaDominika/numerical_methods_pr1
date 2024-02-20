function [wynik] = metodaSimpsona(wspolczynniki, a, b, n)
% funkcja służy do przybliżania wartości całki metodą Simpsona
% WE:
% wspolczynniki - lista współczynników, gdzie pierwszy element to a₁, drugi to a₂, ..., a ostatni to aₙ
% a - dolna granica całkowania
% b - górna granica całkowanian - 
% n - liczba przedziałów na jakie dzielimy przedział [a,b]
% WY:
% wynik - przybliżona wartość całki


% szczególne przypadki współczynników są "rozwiązywane" w funkcji metodaGoertzela

% h - odległość między dwoma sąsiednimi punktami podziałowymi 
h = (b-a)/n;

% t - wektor punktów podziałowych
t = zeros(n, 1);
for i =1:n
    t(i) = a + i*h;
end

% Obliczamy:
% sumę wartości funkcji f w punktach podzialowych (s_p)
% sumę wartości funkcji f w punktach środkowych każdego przedziału (s_s)
s_p = 0;
s_s = 0;
for iterator = 1:n
    s_s = s_s + metodaGoertzela(wspolczynniki,t(iterator) - h/2);
    if iterator<n
       s_p = s_p + metodaGoertzela(wspolczynniki, t(iterator));
    end
end

%wyznaczamy wartość całki według podanego wyżej wzoru
wynik = (h/6) * (metodaGoertzela(wspolczynniki, a) + metodaGoertzela(wspolczynniki,b) + 2*s_p + 4*s_s);
end