disp("Matriz A")
A=[1 0 0;1 1 0;-1 -1 1;-2 0 -2];
disp(A);
disp("Forma de escada reduzida")
disp(rref(A));
disp("Matriz A")
A=[1 0 -3 2;0 -1 -2 2;1 2 4 -5];
disp(A);
disp("Forma de escada reduzida")
disp(rref(A));
disp("Matriz A")
A=[1 2 3 4;9 10 11 12;5 6 7 8;-13 -14 -15 -16]
disp(A);
disp("Forma de escada reduzida")
disp(rref(A));
disp("Matriz A")
A=[1 -1 1 -1 1;-1 1 -1 1 -1]
disp(A);
disp("Forma de escada reduzida")
disp(rref(A));
clc;

function [kernel, image] = nucleo_imagem(A)
    // Calcula o núcleo da matriz A
    [R, pivcol] = rref(A); 
    kernel = [];
    if size(pivcol, "*") < size(A, 2) then
        kernel = zeros(size(A, 2), size(A, 2) - size(pivcol, "*"));
        livres = setdiff(1:size(A, 2), pivcol);
        for j = 1:size(livres, "*")
            kernel(livres(j), j) = 1;
            for i = 1:size(pivcol, "*")
                kernel(pivcol(i), j) = -R(i, livres(j));
            end
        end
    end
    
    // Calcula a imagem da matriz A
    image = [];
    for i = 1:size(pivcol, "*")
        image = [image, A(:, pivcol(i))]; 
    end
endfunction


// (a)
disp("Matriz A");
A=[1 0 0;1 1 0;-1 -1 1;-2 0 -2];
disp(rref(A));
[kernel_a, image_a] = nucleo_imagem(A);
disp(kernel_a,image_a);
disp("Matriz A");
A=[1 0 -3 2;0 -1 -2 2;1 2 4 -5];
disp(rref(A));
[kernel_a, image_a] = nucleo_imagem(A);
disp(kernel_a,image_a);
disp("Matriz A");
A=[1 2 3 4;9 10 11 12;5 6 7 8;-13 -14 -15 -16];
disp(rref(A));
[kernel_a, image_a] = nucleo_imagem(A);
disp(kernel_a,image_a);
disp("Matriz A");
A=[1 -1 1 -1 1;-1 1 -1 1 -1];
disp(rref(A));
[kernel_a, image_a] = nucleo_imagem(A);
disp(kernel_a,image_a);
clear;
clc;

function T = matriz_transformacao(A, B, B1)
    // (a) Forma as matrizes B e B1 cujas as colunas são os vetores das bases dadas.
    // Assumindo que B e B1 já são fornecidas como matrizes com vetores colunares.

    // (b) Seja A nxn a matriz padrão de T.
    // A já é fornecida como entrada da função.

    // (c) Juntar B1 a AB para formar a matriz m x (m+n) C. Onde C = [B1 A*B].
    C = [B1 A*B];

    // (d) Use rref(C) para calcular a forma escalonada reduzida C. 
    // A matriz composta pelas n colunas mais a direita de C forma a matriz de T relativa as bases B e B1.
    C_rref = rref(C);
    T = C_rref(:, (size(B1, 2) + 1):$); 

endfunction

B=[1 0;-1 1];
B1=[1 0 1;1 1 0;0 1 1];
//A é a canonica trasnposta
A=[1 1 0;1 0 1]';
T=matriz_transformacao(A, B, B1);
disp(T)
clear;
clc;




















A = [2 3;1 4];
A = [1 2 -2; -2 5 -2; -6 6 -3];
A = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16];
//Autovetores e Autovalores.
//A
disp("Matriz a");
A = [2 3;1 4];
//Q1
p=poly(A, 'x');
disp("polinomio caracteristico",p);
//Q2
r=roots(p);
disp("raizes do polinomio",r);
//Q3
[V, D] = spec(A);
disp("Autovetores",V,"Autovalores",D);
//B
disp("Matriz b");
A = [1 2 -2; -2 5 -2; -6 6 -3];
//Q1
p=poly(A, 'x');
disp("polinomio caracteristico",p);
//Q2
r=roots(p);
disp("raizes do polinomio",r);
//Q3
[V, D] = spec(A);
disp("Autovetores",V,"Autovalores",D);
//C
disp("Matriz c");
A = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16];
//Q1
p=poly(A, 'x');
disp("polinomio caracteristico",p);
//Q2
r=roots(p);
disp("raizes do polinomio",r);
//Q3
[V, D] = spec(A);
disp("Autovetores",V,"Autovalores",D);
clc;
clear;

 // Definir a matriz A
A = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16];
// Calcular autovalores (D) e autovetores (P)
[P , D ] = spec ( A ) ;
// Calcular a inversa de P
P_inv = inv( P ) ;
// Verificar a d i a g o n a l i z a o
AP = P_inv * A * P ;
// Exibir os resultados
disp (" Matriz ␣ diagonal ␣D␣( autovalores ):") ;
disp ( D ) ;
disp (" Matriz ␣P␣( autovetores ):") ;
disp ( P ) ;
disp (" V e r i f i c a o ␣de␣P^( -1)␣*␣A␣*␣P:") ;
disp ( AP ) ;
