Aluno: Rafael José Braga Coelho
<h2>Questão 1</h2>

<h3>Letra A</h3>
![[Pasted image 20240824164505.png]]

Para calcularmos cada um dos 9 $T$s pontos devemos somar os pontos adjacentes e fazer a média aritmética, por exemplo $T_1$ onde somamos 100+50+T2+T4 ou seja $T_1=$$\dfrac {(100+50+T2+T4)} {4}$

$T_1= (100 + 50 + T_2 + T_4) / 4$
$T_2 = (100 + T_1 + T_3 + T_5) / 4$
$T_3 = (100 + T_2 + 50 + T_6) / 4$
$T_4 = (50 + T_1 + T_5 + T_7) / 4$
$T_5 = (T_2 + T_4 + T_6 + T_8) / 4$
$T_6 = (T_3 + T_5 + 50 + T_9) / 4$
$T_7 = (50 + T_4 + T_8 + 0) / 4$
$T_8 = (T_5 + T_7 + T_9 + 0) / 4$
$T_9 = (T_6 + T_8 + 50 + 0) / 4$

segue a refatoração do sistema acima:

 $4T_1 - T_2 - T_4 = 150$
$-T_1 + 4T_2 - T_3 - T_5 = 100$
$-T_2 + 4T_3 - T_6 = 150$
$-T_1 + 4T_4 - T_5 - T_7 = 50$
$-T_2 - T_4 + 4T_5 - T_6 - T_8 = 0$
$-T_3 - T_5 + 4T_6 - T_9 = 50$
$-T_4 + 4T_7 - T_8 = 50$
$-T_5 - T_7 + 4T_8 - T_9 = 0$
$-T_6 - T_8 + 4T_9 = 50$

<h3>Letra B</h3>

A representação do sistema em forma de matriz fica desta forma, onde todos os $Tn$ que não estão na soma são representados como zero.

A= a nossa matriz com as variáveis.
b= o vetor de termos independentes.

Utilizando a decomposição LU disponível pelo scilab o código permanece com esta aparência
```
A = [ 4  -1   0  -1   0   0   0   0   0;
     -1   4  -1   0  -1   0   0   0   0;
      0  -1   4   0   0  -1   0   0   0;
     -1   0   0   4  -1   0  -1   0   0;
      0  -1   0  -1   4  -1   0  -1   0;
      0   0  -1   0  -1   4   0   0  -1;
      0   0   0  -1   0   0   4  -1   0;
      0   0   0   0  -1   0  -1   4  -1;
      0   0   0   0   0  -1   0  -1   4 ];

b = [ 150; 100; 150;  50;   0;  50;  50;   0;  50 ];

[L, U] = lu(A);
y = L\b;
x = U\y;
disp(x);
```

Aqui está o resultado da resolução do sistema de $T_1$ até $T_9$:
   67.857143
   71.428571
   67.857143
   50.000000
   50.000000
   50.000000
   32.142857
   28.571429
   32.142857

<h3>Letra C</h3>

Utilizando o método iterativo de Gauss Seidel vamos ficar  o seguinte código 

o nosso chute inicial começa com é um vetor de 9 zeros e utilizando uma tolerância de 0.0000001 ou 1e-7
```
A = [ 4  -1   0  -1   0   0   0   0   0;
     -1   4  -1   0  -1   0   0   0   0;
      0  -1   4   0   0  -1   0   0   0;
     -1   0   0   4  -1   0  -1   0   0;
      0  -1   0  -1   4  -1   0  -1   0;
      0   0  -1   0  -1   4   0   0  -1;
      0   0   0  -1   0   0   4  -1   0;
      0   0   0   0  -1   0  -1   4  -1;
      0   0   0   0   0  -1   0  -1   4 ];

b = [ 150; 100; 150;  50;   0;  50;  50;   0;  50 ];

function [x, iter]=gauss_seidel(A, b, x0, tol, max_iter)
    n = length(b);
    x = x0;
    for iter = 1:max_iter
        x_old = x;
        for i = 1:n
            sigma = 0;
            for j = 1:n
                if j ~= i
                    sigma = sigma + A(i, j) * x(j);
                end
            end
            x(i) = (b(i) - sigma) / A(i, i);
        end
        
        // Imprime a solução a cada iteração
        //printf("Iteração %d: ", iter);
        disp(x);
        
        if norm(x - x_old, "inf") < tol
            return;
        end
    end
endfunction

// Parâmetros iniciais
x0 = zeros(9, 1); // Chute inicial
tol = 1e-5; // Tolerância
max_iter = 1000; // Número máximo de iterações

// Resolver o sistema
[x_gs, iter_gs] = gauss_seidel(A, b, x0, tol, max_iter);

// Mostrar as soluções e o número de iterações
disp(x_gs, "Temperaturas nos nós internos usando Gauss-Seidel:");
disp(iter_gs, "Número de iterações:");
```
com 30 iterações chegamos ao mesmo resultado da letra A

  "Temperaturas nos nós internos usando Gauss-Seidel:"

   67.857143
   71.428571
   67.857143
   50.000000
   50.000000
   50.000000
   32.142857
   28.571429
   32.142857

  "Número de iterações:"

   30.

<h2>Questão 2</h2>

<h3>Letra A</h3>

// Questão 02 - A
// para amontagem do sitema linear, vamos subtitui primeira os pontos na equaçoes para fazer a montagem do sistemas
/*
Função
P(x) = ax^2 + bx + c
No ponto (-1,-3)
a(-1)^2 + b(-1) + c = -3
    a - b + c = -3

No ponto (1,-1)
a(1)^2 + b(1) + c = -1
    a + b + c = -1

No ponto (2,9)
a(2)^2 + b(2) + c = 9
    4a + 2b + c = 9
*/
// Sistema linear
/*a - b + c = -3
a + b + c = -1
4a + 2b + c = 9
*/

Para construir o sistema linear vamos usar $P(x)=ax^2bx+c$  .
substituindo o x pelos equivalentes nos pontos (**x**,y) assim fazemos  as 3 linhas do sistema com vetor de termos independentes sendo o y dos pontos (x,****) 
$P(-1): a-b+c=-3$
$P(1):a+b+c=-1$
$P(2): 4a+2b+c=9$
