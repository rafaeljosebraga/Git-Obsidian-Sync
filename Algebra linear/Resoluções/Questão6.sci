function A1 = matriz_transformacao(B1, T)
    // Função para calcular a matriz A1 da transformação linear T relativa à base B1.
    
    // Obtém a dimensão do espaço vetorial
    n = size(B1, 1);
    
    // (a) Forma as matrizes B e B1
    B = eye(n, n); // Matriz identidade como base canônica
    B1 = [B1(:, 1) B1(:, 2)]; // Constrói a matriz B1 com os vetores da base B1

    // (b) Junta B e B1, formando a matriz C
    C = [B1 B];

    // (c) Calcula a forma escalonada reduzida de C
    D = rref(C);

    // (d) Obtém a matriz P^-1 das n colunas mais à direita de D
    P_inv = D(:, n+1:2*n);

    // Calcula a matriz A da transformação na base canônica
    A = zeros(n, n);
    for i = 1:n
        A(:, i) = T(B(:, i));
    end

    // Calcula a matriz A1 da transformação na base B1
    A1 = P_inv * A * P_inv^(-1); 
endfunction

// (a) Transformação em R^2
function v = T_a(u)
    x = u(1);
    y = u(2);
    v = [2*x - y; y - x];
endfunction

B1_a = [[1; -2] [0; 3]];
A1_a = matriz_transformacao(B1_a, T_a);
disp("Matriz A1 (a):")
disp(A1_a)


// (b) Transformação em R^3
function v = T_b(u)
    x = u(1);
    y = u(2);
    z = u(3);
    v = [x; x + 2*y; x + y + 3*z];
endfunction

B1_b = [[1; -1; 0] [0; 0; 1] [0; 1; -1]];
A1_b = matriz_transformacao(B1_b, T_b);
disp("Matriz A1 (b):")
disp(A1_b)
