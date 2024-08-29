//Letra(a)
// (a) Definir as bases B e B1
B = eye(2,2); // Base padrão em R^2
B1 = [1 0; -2 3]; // Base B1 fornecida
// (b) Concatenar B e B1 para formar a matriz C
C = [B B1];
// (c) Encontrar a forma escalonada reduzida de C
D = rref(C);
// (d) Extrair P^-1 das colunas à direita de D
P_inv = D(:, 3:4);
// Calcular a matriz de transformação A na base padrão
A = [2 -1; -1 1];
// Calcular a matriz P (inversa de P^-1)
P = inv(P_inv);
// Calcular a matriz A1 na nova base
A1 = P_inv * A * P;
// Exibir o resultado
disp("Matriz A1 para a Parte (a):",A1);

//Letra(b)
// (a) Definir as bases B e B1
B = eye(3,3); // Base padrão em R^3
B1 = [1 0 0; -1 0 1; 0 1 -1]; // Base B1 fornecida
// (b) Concatenar B e B1 para formar a matriz C
C = [B B1];
// (c) Encontrar a forma escalonada reduzida de C
D = rref(C);
// (d) Extrair P^-1 das colunas à direita de D
P_inv = D(:, 4:6);
// Calcular a matriz de transformação A na base padrão
A = [1 2 0; 1 1 3; 0 0 0];
// Calcular a matriz P (inversa de P^-1)
P = inv(P_inv);
// Calcular a matriz A1 na nova base
A1 = P_inv * A * P;
// Exibir o resultado
disp( "Matriz A1 para a Parte (b):",A1);
