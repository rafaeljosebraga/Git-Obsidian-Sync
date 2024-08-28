// Definir a matriz A
A = [-2, 2, -3; 
     2, 1, -6; 
     -1, -2, 0];

// Calcular autovalores e autovetores de A
[U_A, lambda_A] = spec(A);

// Exibir autovalores e autovetores de A
disp("Autovalores de A:");
disp(lambda_A);
disp("Autovetores de A:");
disp(U_A);

// Calcular autovalores e autovetores de A^T
[U_AT, lambda_AT] = spec(A');

// Exibir autovalores e autovetores de A^T
disp("Autovalores de A^T:");
disp(lambda_AT);
disp("Autovetores de A^T:");
disp(U_AT);

// Calcular a inversa de A
A_inv = inv(A);

// Calcular autovalores e autovetores de A_inv
[U_A_inv, lambda_A_inv] = spec(A_inv);

// Exibir autovalores e autovetores de A^-1
disp("Autovalores de A^-1:");
disp(lambda_A_inv);
disp("Autovetores de A^-1:");
disp(U_A_inv);
