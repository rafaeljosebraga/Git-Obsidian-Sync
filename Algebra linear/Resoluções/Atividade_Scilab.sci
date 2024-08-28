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

function [nucleo, imagem] = nucleo_imagem(A)
    // Calcula o núcleo da matriz A
    [R, pivcol] = rref(A); 
    nucleo = [];
    if size(pivcol, "*") < size(A, 2) then
        nucleo = zeros(size(A, 2), size(A, 2) - size(pivcol, "*"));
        livres = setdiff(1:size(A, 2), pivcol);
        for j = 1:size(livres, "*")
            nucleo(livres(j), j) = 1;
            for i = 1:size(pivcol, "*")
                nucleo(pivcol(i), j) = -R(i, livres(j));
            end
        end
    end
    
    // Calcula a imagem da matriz A
    imagem = [];
    for i = 1:size(pivcol, "*")
        imagem = [imagem, A(:, pivcol(i))]; 
    end
endfunction


// (a)
disp("Matriz A");
A=[1 0 0;1 1 0;-1 -1 1;-2 0 -2];
disp(A);
disp("Forma escalonada reduzida da matriz",rref(A));
[nucleo, imagem] = nucleo_imagem(A);
disp("Matriz Nucleo:",nucleo,"Matriz Imagem",imagem);
disp("Matriz B");
A=[1 0 -3 2;0 -1 -2 2;1 2 4 -5];
disp(A);
disp("Forma escalonada reduzida da matriz",rref(A));
[nucleo, imagem] = nucleo_imagem(A);
disp("Matriz Nucleo:",nucleo,"Matriz Imagem",imagem);
disp("Matriz C");
A=[1 2 3 4;9 10 11 12;5 6 7 8;-13 -14 -15 -16];
disp(A);
disp("Forma escalonada reduzida da matriz",rref(A));;
[nucleo, imagem] = nucleo_imagem(A);
disp("Matriz Nucleo:",nucleo,"Matriz Imagem",imagem);
disp("Matriz D");
A=[1 -1 1 -1 1;-1 1 -1 1 -1];
disp(A);
disp("Forma escalonada reduzida da matriz",rref(A));
[nucleo, imagem] = nucleo_imagem(A);
disp("Matriz Nucleo:",nucleo,"Matriz Imagem",imagem);
/*
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




















A = [2 3;1 4];//diagonalizavel
A = [1 2 -2; -2 5 -2; -6 6 -3];//diagonalizavel
A = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16];//NãoDiagonalizavel
A = [1 2 -2;2 5 0;-2 0 -3]
clc;
clear;
//Autovetores e Autovalores.
//A
disp("Matriz (a)");
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
disp("Matriz (b)");
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
disp("Matriz (c)");
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

function questão5(A)
// Calcular autovalores (D) e autovetores (P)
[P , D ] = spec ( A ) ;
// Calcular a inversa de P
P_inv = inv( P ) ;
// Verificar a d i a g o n a l i z a o
AP = P_inv * A * P ;
// Exibir os resultados
disp (" Matriz diagonal De( autovalores ):") ;
disp ( D ) ;
disp (" Verificao de P^(-1)*A*P:") ;
disp ( AP ) ;
endfunction

disp("Matriz (a)")
A = [2 3;1 4];//diagonalizavel
questão5(A);
disp("Matriz (b)");
A = [1 2 -2; -2 5 -2; -6 6 -3];//diagonalizavel
questão5(A);
disp("Matriz (c)");
A = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16];//NãoDiagonalizavel
questão5(A);

clear;clc;

function MatrizResultado=calcula_Potencia_Matricial(A,p)
    //Calcula matriz de autovalores
    [P , D ] = spec ( A ) ;
    P_inv = inv( P ) ;
    [Atam,m]=size(A);
    for i = 1:Atam
        D(i, i) = ((D(i, i))^p);
    end
MatrizResultado=P*D*P_inv;
endfunction
A = [2 3;3 4];
disp("Matriz (a)");
Res=calcula_Potencia_Matricial(A,2);
disp("A^2");
disp(Res);
Res=calcula_Potencia_Matricial(A,3);
disp("A^3");
disp(Res);
Res=calcula_Potencia_Matricial(A,10)
disp("A^10");
disp(Res);
A = [1 2 -2;2 5 0;-2 0 -3];
disp("Matriz (b)");
Res=calcula_Potencia_Matricial(A,2);
disp("A^2");
disp(Res);
Res=calcula_Potencia_Matricial(A,3);
disp("A^3");
disp(Res);
Res=calcula_Potencia_Matricial(A,10);
disp("A^10");
disp(Res);
