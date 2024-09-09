// Função de Interpolação de Lagrange
// X: vetor de coordenadas X dos pontos dados
// Y: vetor de coordenadas Y dos pontos dados (f(X))
// xx: valor em que queremos interpolar (valor de X para estimar f(xx))
function interpolacao = lagrange_interpolacao(vetor_X, vetor_Y, valor_xx)
   [m, numero_pontos] = size(vetor_X);
   interpolacao = 0;
   for i = 1 : numero_pontos
       termo_Lagrange = vetor_Y(i);
       for j = 1 : numero_pontos
           if i <> j then
               termo_Lagrange = termo_Lagrange * (valor_xx - vetor_X(j)) / (vetor_X(i) - vetor_X(j));
           end
       end
       interpolacao = interpolacao + termo_Lagrange;
   end
endfunction

// Definição dos pontos conhecidos (X e Y)
vetor_X = [0.81, 0.83, 0.86, 0.87];
vetor_Y = [16.94410, 17.56492, 18.50515, 18.82091];

// Valor para encontrar f(xx) via interpolação
valor_xx = 0.84;

// Impressões para diferentes graus de polinômio
// Grau 1
valor_interpolado = lagrange_interpolacao(vetor_X(1:2), vetor_Y(1:2), valor_xx);
mprintf("O valor interpolado com polinômio de grau 1 é %.6f\n", valor_interpolado);

// Grau 2
valor_interpolado = lagrange_interpolacao(vetor_X(1:3), vetor_Y(1:3), valor_xx);
mprintf("O valor interpolado com polinômio de grau 2 é %.6f\n", valor_interpolado);

// Grau 3
valor_interpolado = lagrange_interpolacao(vetor_X(1:4), vetor_Y(1:4), valor_xx);
mprintf("O valor interpolado com polinômio de grau 3 é %.6f\n", valor_interpolado);

clc;

//b)
// Diferenças Divididas
// Função para calcular a tabela de diferenças divididas
// X: vetor de pontos x
// Y: vetor de valores da função em X
// Retorna uma matriz d onde cada coluna representa uma ordem de diferença dividida
function T=Tabdiffdiv(x, y)
    n = length(x); 
    T = zeros(n, n);
    T(:, 1) = y; 
    
    for j = 2:n
        for i = 1:(n - j + 1)
            T(i, j) = (T(i + 1, j - 1) - T(i, j - 1)) / (x(i + j - 1) - x(i));
        end
    end
end

// Função Interpolação de Newton
// X: vetor de pontos x
// Y: vetor de valores da função em X
// x_interp: ponto onde queremos interpolar
// Retorna o valor do polinômio interpolador em x_interp

function S=NewtonInterpol(x, y, p)
    n = length(x); 
    T = Tabdiffdiv(x, y); 
    S = y(1); 
    
    for i = 2:n
        M = 1;
        for j = 1:(i - 1)
            M = M * (p - x(j)); // Calcula o produto dos termos
        end
        S = S + M * T(1, i); // Atualiza S
    end
end
// Impressões para diferentes graus de polinômio
// Grau 1
valor_interpolado = lagrange_interpolacao(vetor_X(1:2), vetor_Y(1:2), valor_xx);
mprintf("O valor interpolado com polinômio de grau 1 é %.6f\n", valor_interpolado);

// Grau 2
valor_interpolado = lagrange_interpolacao(vetor_X(1:3), vetor_Y(1:3), valor_xx);
mprintf("O valor interpolado com polinômio de grau 2 é %.6f\n", valor_interpolado);

// Grau 3
valor_interpolado = lagrange_interpolacao(vetor_X(1:4), vetor_Y(1:4), valor_xx);
mprintf("O valor interpolado com polinômio de grau 3 é %.6f\n", valor_interpolado);
