A = [2 -2; 1 1;3 1]
disp(rref(A));
[Q,R]=qr(A);
disp(A,Q,R)
clear;clc;


A = [2 -2; 1 1;3 1]
b=[2 -1 1]';
// Calcula a decomposição QR
[Q,R] = qr(A);

// Calcula Q^T * b
b_transformado = Q'*b;
disp(b_transformado);

// Resolve o sistema triangular superior
x = R\b_transformado;

// Imprime a solução x
disp(x);


A = [1 -1;2 3;4 5]
b=[2 -1 5]';

function Result= resolve_SistemaQR()

// Calcula a decomposição QR
[Q,R] = qr(A);

// Calcula Q^T * b
Result = Q'*b;
disp(b_transformado);
endfunction

// Resolve o sistema triangular superior
x = R\b_transformado;
Result
// Imprime a solução x
disp(x);


/*
U: Representa as direções de maior variância dos dados na matriz A.
Σ: Representa a magnitude da variância em cada direção, representada pelos valores singulares σ_i.
V: Representa as direções originais do espaço de dados de A.
*/

B = [1 2 3; 4 5 6];

// Calcula o posto usando o comando "rank"
posto_B = rank(B);
disp("Posto de B: ", posto_B);

// Calcula a SVD
[U, S, V] = svd(B);
// Exibe os valores singulares
disp("Valores singulares de B: ", diag(S));

// Verifica o posto com base nos valores singulares

//Soma a quantidade de elementos na diagonal com valores acha o posto!!!
disp("Posto de B (SVD): ", sum(diag(S) > 1e-10));


/*
Falando sobre svd caso seja svd(A,'e')
A opção 'e' indica a SVD econômica (Reduced SVD).
A função svd pode ser usada com outras opções, como 'g' para a decomposição de Golub-Reinsch.
A função rank pode ser usada para determinar o posto da matriz A antes de calcular a SVD reduzida.
*/

[U, S, V] = svd(B, 'e');

// Exibe as matrizes U, S e V
disp(U);
disp(S);
disp(V);

// Reconstrói a matriz A usando a SVD reduzida
A_reconstruida = U*S*V';
disp("A reconstruída: ", A_reconstruida);
