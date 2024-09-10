clc;
// Questão 03 - A

// anos - OBS.: 2002.1 - Janeiro de 2002, 
// 2002.2 - Fevereiro de 2002
data = [1999 2000 2001 2002+1/12 2002+2/12];
// infectados pela dengue
numeros = [4300 2200 36500 41600 42700];

z = [ones(1, 5)' data'];

a = z\numeros';

a1 = a(1);
a2 = a(2);

disp("Coeficientes da reta: ");
disp(a);

marco2002 = 2002 + 2/12;
numerosMarco_2022 = a1 + a2marco2002;

disp("Infectados em março de 2002(2002.3):");
disp("numerosMarco_2022");

/*
// Questão 03 - B

// Difernça dividida
function [t] = difDividida(x, y)
    n = length(x);

    t(:, 1) = y
    for j = 2:n
        for i = 1:(n-j+1)
            t(i, j) = (t(i+1, j-1) - t(i, j-1))/(x(i+j-1)-x(i));
        end
    end
endfunction

// polinomio Newton - Interpolador
function [S] = poliNewton(p, x, y) 
    n = length(x);
    t = difDividida(x, y);
    S = y(1);

    for i = 2:n
        // para não zerar
        M = 1;
        for j = 1:(i-1)
             M = M(p-x(j));
        end
        // 
        S = S + M*t(1, i); 
    end
endfunction

// conforme o problema de ate no maximo grau <= 2
x = [11 23 47 48 49];
// infectados pela dengue
numeros = [4300 2200 36500 41600 42700];

//fevereiro de 2001
xx = 2001 + 1/12;

[S] = poliNewton(xx, data(1:3), numeros(1:3));
disp("Fevereiro de 2001: ");
disp(S);

// Questão 03 - C
// Erro 

// Valor real mais próximo de fevereiro de 2001 fornecido na tabela (caso conhecido)
valor_real = 36500; // Aproximadamente o valor de 2001

// Calcular o erro
erro = abs(valor_real - S);

// Exibir o erro
disp("Erro estimado da aproximação:");
disp(erro);
