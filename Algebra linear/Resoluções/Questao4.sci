// Função para calcular a matriz de transformação relativa às bases B e B1
function T_relative = calc_transformation(B, B1, A)
    // Juntar B1 e A*B
    C = [B1, A*B];
    // Calcular a forma escalonada reduzida
    C_reduced = rref(C);
    // Extrair a matriz T relativa às bases
    T_relative = C_reduced(:, size(B1, 2)+1:$);
endfunction

// Parte (a)
// B = {(1, 0, 1), (0, 1, 0)}, B1 = {(1, 0, 1), (1, 0, 1)}, T(x, y) = (x + y, x, y)
B_a = [1 0; 0 1; 1 0];
B1_a = [1 1; 0 0; 1 1];
A_a = [1 1; 1 0; 0 1];
T_a_relative = calc_transformation(B_a, B1_a, A_a);
disp("Matriz T relativa a B e B1 na parte (a):");
disp(T_a_relative);

// Parte (b)
// B = {(2, 0), (0, 2)}, B1 = {(1, 1), (2, 0)}, T(x, y) = (2x, 2y)
B_b = [2 0; 0 2];
B1_b = [1 2; 1 0];
A_b = [2 0; 0 2];
T_b_relative = calc_transformation(B_b, B1_b, A_b);
disp("Matriz T relativa a B e B1 na parte (b):");
disp(T_b_relative);

// Parte (c)
// B = {(2, 0, 0), (0, 1, 2), (1, 2, 1)}, B1 = {(1, 0, 0), (1, 1, 0), (1, 0, 1)}, T(x, y, z) = (2x, x + y, y + z)
B_c = [2 0 1; 0 1 2; 0 2 1];
B1_c = [1 1 1; 0 1 0; 0 0 1];
A_c = [2 1 0; 0 1 1; 0 0 1];
T_c_relative = calc_transformation(B_c, B1_c, A_c);
disp("Matriz T relativa a B e B1 na parte (c):");
disp(T_c_relative);
clc;
clear;
// Função para calcular a matriz de transformação relativa às bases B e B1
function T_relative = calc_transformation(B, B1, A)
    // Verificar se as dimensões são compatíveis
    if size(B1, 1) ~= size(A*B, 1) then
        error("Dimensões incompatíveis para concatenação.");
    end
    
    // Juntar B1 e A*B
    C = [B1, A*B];
    
    // Calcular a forma escalonada reduzida
    C_reduced = rref(C);
    
    // Extrair a matriz T relativa às bases
    T_relative = C_reduced(:, size(B1, 2)+1:$);
endfunction

// Parte (a)
// B = {(1, 0, 1), (0, 1, 0)}, B1 = {(1, 0, 1), (1, 0, 1)}, T(x, y) = (x + y, x, y)
B_a = [1 0; 0 1; 1 0];
B1_a = [1 1; 0 0; 1 1];
A_a = [1 1; 1 0; 0 1];
T_a_relative = calc_transformation(B_a, B1_a, A_a);
disp("Matriz T relativa a B e B1 na parte (a):");
disp(T_a_relative);

// Parte (b)
// B = {(2, 0), (0, 2)}, B1 = {(1, 1), (2, 0)}, T(x, y) = (2x, 2y)
B_b = [2 0; 0 2];
B1_b = [1 2; 1 0];
A_b = [2 0; 0 2];
T_b_relative = calc_transformation(B_b, B1_b, A_b);
disp("Matriz T relativa a B e B1 na parte (b):");
disp(T_b_relative);

// Parte (c)
// B = {(2, 0, 0), (0, 1, 2), (1, 2, 1)}, B1 = {(1, 0, 0), (1, 1, 0), (1, 0, 1)}, T(x, y, z) = (2x, x + y, y + z)
B_c = [2 0 1; 0 1 2; 0 2 1];
B1_c = [1 1 1; 0 1 0; 0 0 1];
A_c = [2 1 0; 0 1 1; 0 0 1];
T_c_relative = calc_transformation(B_c, B1_c, A_c);
disp("Matriz T relativa a B e B1 na parte (c):");
disp(T_c_relative);
