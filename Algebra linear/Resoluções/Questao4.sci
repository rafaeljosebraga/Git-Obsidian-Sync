function T = matriz_transformacao(A, B, B1)
    C = [B1 A*B];
    C_rref = rref(C);
    T = C_rref(:, (size(B1, 2) + 1):$); 

endfunction




B=[1 0;-1 1];
B1=[1 0 1;1 1 0;0 1 1];
//A é a canonica trasnposta
A=[1 1 0;1 0 1]';
T1=matriz_transformacao(A, B, B1);
// Vetor v
v = [5; 4];

// (i) Calculando T(v) diretamente
disp("Questão 5 (a) - (i) T(v) direto:")
T_v_direto = [v(1) + v(2); v(1); v(2)] 
disp(T_v_direto)

// (ii) Usando a matriz de transformação
disp("Questão 5 (a) - (ii) Usando a matriz:")

// Base B
B = [1 0; -1 1];

// Coordenadas de v na base B
v_B = [5; 9]; // Calculadas manualmente

// Calculando T(v) na base B1
T_v_B1 = T1 * v_B
disp(T_v_B1)




// Definindo as bases e a matriz A
B = [1 1; 1 -1];
B1 = [1 0; 0 1]; 
// Calculando a matriz A (T aplicada aos vetores de B)
A = [2 0; 0 2];  

// Chamando a função
T2 = matriz_transformacao(A, B, B1);
// Vetor v
v = [0; -5; 7];

// (i) Calculando T(v) diretamente
disp("Questão 5 (b) - (i) T(v) direto:")
T_v_direto = [2*v(1) - v(3); v(2) - 2*v(1)]
disp(T_v_direto)

// (ii) Usando a matriz de transformação
disp("Questão 5 (b) - (ii) Usando a matriz:")

// Base B (corrigida)
B = [2 0 1; 0 2 1; 1 2 1];

// Coordenadas de v na base B
v_B = [-3; -1; 3]; // Calculadas manualmente

// Calculando T(v) na base B1
T_v_B1 = T2 * v_B(1:2) // Usando apenas as duas primeiras coordenadas de v_B
disp(T_v_B1)


// Definindo as bases e a matriz A
B = [1 1 0; 0 1 1; 1 0 1];
B1 = [1 0 0; 0 1 0; 0 0 1];
// Calculando a matriz A (T aplicada aos vetores de B)
A = [2 1 1; 1 2 1; 1 1 2];

// Chamando a função
T3 = matriz_transformacao(A, B, B1);

// Vetor v
v = [1; -5; 2];

// (i) Calculando T(v) diretamente
disp("Questão 5 (c) - (i) T(v) direto:")
T_v_direto = [2*v(1); v(1) + v(2); v(2) + v(3); v(1) + v(3)]
disp(T_v_direto)

// (ii) Usando a matriz de transformação
disp("Questão 5 (c) - (ii) Usando a matriz:")

// Base B
B = [2 0 1; 0 2 1; 1 2 1];

// Coordenadas de v na base B
v_B = [-1; -2; 3]; // Calculadas manualmente

// Calculando T(v) na base B1
T_v_B1 = T3 * v_B
disp(T_v_B1)
