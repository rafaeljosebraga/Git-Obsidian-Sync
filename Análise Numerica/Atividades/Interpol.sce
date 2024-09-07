// interpolação de Lagrange
function s = lagrange(X, Y, xx)
    [m,n] = size (X);
    s = 0;
    for i = 1 : n
        produto = Y(i);
        for j = 1 : n
            if i <> j
                produto = produto * (xx - X(j))/ (X(i) - X(j))
            end
        end
        s = s + produto;
    end
endfunction

// Definição dos pontos
X = [0.81, 0.83, 0.86, 0.87];
Y = [16.94410, 17.56492, 18.50515, 18.82091];
// Valor para encontrar f(x)
xx = 0.84;

for n = 1:3
    s = lagrange(X(1:n), Y(1:n), xx);
    disp("O valor interpolado de f(0.84) com polinômio de grau " + string(s));
end 
