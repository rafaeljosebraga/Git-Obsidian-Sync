// Definir as bases B e B1
B = [1 0 0; 0 1 0; 0 0 1];
B1 = [1 1 0; 1 -1 0; 0 0 1];

// Definir a matriz A que representa a transformação T
A = [1 3 0; 3 1 0; 0 0 -2];

// Encontrar a matriz de transição P de B1 para B
P = B \ B1;

// Encontrar a inversa de P
P_inv = inv(P);

// Calcular a matriz A1 relativa à base B1
A1 = P_inv * A * P;

// Definir o vetor [v] em relação à base B1
v_B1 = [1; 2; 3];

// Calcular [v]_B
v_B = P * v_B1;

// Calcular [T(v)]_B
T_v_B = A * v_B;

// Calcular [T(v)]_B1 de duas maneiras
T_v_B1_metodo1 = P_inv * T_v_B;
T_v_B1_metodo2 = A1 * v_B1;

// Mostrar os resultados
disp("Matriz de transição P de B1 para B:");
disp(P);

disp("Inversa da matriz de transição P^-1:");
disp(P_inv);

disp("Matriz A1 relativa à base B1:");
disp(A1);

disp("[v]_B:");
disp(v_B);

disp("[T(v)]_B:");
disp(T_v_B);

disp("[T(v)]_B1 calculado com P^-1 * [T(v)]_B:");
disp(T_v_B1_metodo1);

disp("[T(v)]_B1 calculado com A1 * [v]_B1:");
disp(T_v_B1_metodo2);
