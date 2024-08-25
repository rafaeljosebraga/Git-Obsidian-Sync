$$\begin{bmatrix}\end{bmatrix}$$
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

Para construir o sistema linear vamos usar $P(x)=ax^2bx+c$  .
substituindo o x pelos equivalentes nos pontos (**x**,y) assim fazemos  as 3 linhas do sistema com vetor de termos independentes sendo o y dos pontos (x,**y**).

chegamos neste sistema.
$P(-1): a-b+c=-3$
$P(1):a+b+c=-1$
$P(2): 4a+2b+c=9$

fazemos a troca de linha da linha 1 e a linha 3, pois 4 é o nosso maior pivô, pois estes métodos de convergência rápida é ideal que tenhamos uma matriz com a diagonal dominante.
$$\begin{bmatrix} 1&-1&1\\1&1&1\\4&2&1 \end{bmatrix}\begin{bmatrix}-3\\-1\\9\end{bmatrix}$$

$$\begin{bmatrix} 4&2&1\\1&1&1\\1&-1&1 \end{bmatrix}\begin{bmatrix}9\\-1\\-3\end{bmatrix}$$

```
function [x, iter]=gauss_seidel(A, b, x0, tol, max_iter)
    n = length(b);
    x = x0;
    disp("Chute inicial.")
    disp(x);
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
        //disp(x);
        
        if norm(x - x_old, "inf") < tol
            return;
        end
    end
endfunction

A = [4 2 1;
     1 1 1;
     1 -1 1];
     
B = [9; -1; -3];

tol = 10^-5;
qtdMaxIter = 1000;
x0 = zeros(3, 1);

[result, qtdIter] = gauss_seidel(A, B, x0, tol, qtdMaxIter);

disp(result);
disp("Quantidade de iteraçoes: ");
disp(qtdIter);

```
o resultado retornado pela método iterativo de Gauss-Seidel é 

   2.9999943
   0.9999990
  -4.9999952

o vetor converge a estes valores após 40 iterações

<h3>Letra B</h3>

Código para plotar o gráfico na tela:
```
a = result(1);
b = result(2);
c = result(3);

function y=P(x)
    y =  a.*x.*x + b.*x + c;
endfunction

// eixo fornecidos pelo problema
eixoX = [-1, 1, 2];
eixoY = [-3, -1, 9];

X = -6: 0.1 : 4;
eixoYPoli = P(X);
plot(X, eixoYPoli, 'b-');
xlabel("Eixo X");
ylabel("Eixo Y - P(x)");
xtitle('Gauss-Seidel - Para encontra valores dos coeficientes A B C');

plot(X, eixoYPoli, 'b-');
plot(eixoX, eixoY, 'ro');
legend('Polinomio', 'Pontos fornecidos');

```

a interpretação do resultado é literalmente o fato de que são os coeficientes da parabola

onde:
a = 2.9999943
b = 0.9999990
c =-4.9999952

$P(x)=ax^2bx+c$
![[Janela gráfica número 0.png]]
coeficiente a : como é positivo tem sua concavidade virada para cima.

coeficiente b : esse coeficiente é positivo, afetando a parabola inclinando ela um pouco para cima.

coeficiente c : é possivel ver que a parabola tem y=-5 quando x=0.

<h2>Questão 3</h2>

<h3>Letra A</h3>
```
function [x, iter]=metodo_iterativo(A, b, x0, err_r)
    // I é a matriz identidade
    I = eye(A); 
    // Calcula (I + A)
    M = I + A;
    
    x = x0;
    iter = 0;
    erro = err_r+1; // Inicializa o erro com um valor maior que a tolerância

    while erro > err_r
        x_anterior = x;
        x = M * x_anterior - b;
        
        // Calcula o erro relativo
        erro = norm(x - x_anterior) / norm(x); 
        //disp(erro);
        iter = iter + 1;
    end
endfunction
```

<h3>Letra B</h3>

```
// Define a matriz A e o vetor b
A = [-1.3, 0.3; 0.5, -0.5];
b = [1; 0];

// Define o chute inicial x0 e o erro relativo como a tolerância
x0 = [0.8; 0.8];
tol = 1e-3; 
// Chama a função para resolver o sistema
[x,iter] = metodo_iterativo(A, b, x0, tol);

// Imprime os resultados
disp("Solução encontrada:");
disp(x);
disp("Número de iterações:");
disp(iter);
```
  Solução encontrada pelo método iterativo é:

  -0.999420490293576
  -0.998145331444403

Este método iterativo é simples e se mostrou eficiente para o caso apresentado, onde foi necessário apenas 17 iterações.

<h2>Questão 4</h2>
```
//Método Iterativo de Newton Raphson
function x=newton_raphson(f, df, x0, tol)
    x = x0;
    while abs(f(x)) > tol
        x = x - f(x)/df(x);
    end
endfunction

//A função, sua derivada e a derivada segunda
function y=f(x)
    y = x*(3 - exp(x/4));
endfunction

function y=df(x)
    y = 3 - exp(x/4) - (x/4)*exp(x/4);
endfunction

function y=ddf(x)
    y = -(1/2)*exp(x/4) - (x/16)*exp(x/4);
endfunction

// Definir o intervalo, a tolerância e o ponto inicial
x0 = 2.25; // Ponto inicial no meio do intervalo
tol = 1e-3;

// Encontrar o ponto crítico (máximo ou mínimo)
x_critico = newton_raphson(df, ddf, x0, tol);

// Verificar se é um máximo
if ddf(x_critico)==0 then
	disp("O ponto x =", x_critico, "é uma sela de f(x).");
	return;
end
if ddf(x_critico) < 0 then
    disp("O ponto x =", x_critico, "é um máximo local de f(x).");
else
    disp("O ponto x =", x_critico, "não é um máximo local de f(x).");
end

// Imprimir o resultado
disp("f(x) =", f(x_critico), "em x =", x_critico);
```

A partir derivada primeira podemos descobrir o ponto crítico em interesse a partir do método iterativo de Newton Raphson, depois precisamos apenas verificar com a derivada segunda se é um máximo/mínimo local ou ponto de sela

assim nosso código retorna.

  O ponto x = 2.470582799028367

  é um máximo local da nossa função f(x).

  f(x) = 2.829912477595915

  em x = 2.470582799028367

<h2>Questão 5</h2>

```
function [x, erro]=raiz(a, p, x0, tol)

    x = x0;

    x_anterior = 0;

    erro = 1; // Inicializa o erro

    iteracoes = 0;

  

    while erro > tol

        // Calcula o novo valor de x usando a fórmula de recorrência

        x_anterior = x;

        x = (1/p) * ((p - 1)*x_anterior + a/(x_anterior^(p-1)));

  

        // Calcula o erro relativo

        erro = abs((x - x_anterior) / x);

        iteracoes = iteracoes + 1;

  

        // Imprime os valores da iteração atual

         printf("\nIteração: %d, x = %f, erro = %f", iteracoes, x, erro);

    end

endfunction

  

a = 2; // Número para calcular a raiz

p = 15; // Índice da raiz

x0 = 1; // Chute inicial 

tol = 1e-3; // Tolerância

  

[Raiz, erro] = raiz(a, p, x0, tol);

  

// Resultado

printf("\n\nResultado da raiz %d de %d: %f", p, a, Raiz);

printf("\nErro relativo final: %f", erro);
```