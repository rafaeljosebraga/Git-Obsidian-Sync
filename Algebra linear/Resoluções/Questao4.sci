function T = matriz_transformacao(A, B, B1)
    C = [B1 A*B];
    C_rref = rref(C);
    T = C_rref(:, (size(B1, 2) + 1):$); 

endfunction

B=[1 0;-1 1];
B1=[1 0 1;1 1 0;0 1 1];
//A é a canonica trasnposta
A=[1 1 0;1 0 1]';
T=matriz_transformacao(A, B, B1);
disp(T)
// Definindo as bases e a matriz A
B = [1 1; 1 -1];
B1 = [1 0; 0 1]; 
// Calculando a matriz A (T aplicada aos vetores de B)
A = [2 0; 0 2];  

// Chamando a função
T = matriz_transformacao(A, B, B1);
disp(T);
// Definindo as bases e a matriz A
B = [1 1 0; 0 1 1; 1 0 1];
B1 = [1 0 0; 0 1 0; 0 0 1];
// Calculando a matriz A (T aplicada aos vetores de B)
A = [2 1 1; 1 2 1; 1 1 2];

// Chamando a função
T = matriz_transformacao(A, B, B1);
disp(T)


