

// Produto Interno
function ip = produto_interno(x, y)
    // Verificando os axiomas (exemplo simples)
    // Linearidade e conjugado já são satisfeitos pela multiplicação padrão
    ip = x' * y;
    // Positividade definida
    if ip >= 0 then
        disp("Produto interno é positivo ou nulo")
    end
end

// Autovalores e Autovetores
function [eigVals, eigVecs] = autovalores_autovetores(A)
    [eigVecs, eigVals] = spec(A);
    disp("Autovalores: "), disp(eigVals)
    disp("Autovetores: "), disp(eigVecs)
end

// Diagonalização
function [P, D] = diagonalizar(A)
    [P, D] = bdiag(A);
    // Verifica se A é diagonalizável
    if rank(P) == size(A, 'r') then
        disp("Matriz é diagonalizável")
    else
        disp("Matriz não é diagonalizável")
    end
end

// Gram-Schmidt Ortogonalização
function Q = gram_schmidt(A)
    [Q, R] = qr(A);
    disp("Base Ortogonalizada: "), disp(Q)
end

// Função de Normalização Individual
function normalizedVectors = normalizar_vetores_individuais(vectors)
    // Inicializando a matriz para armazenar os vetores normalizados
    [n, m] = size(vectors); // n é o número de linhas, m é o número de vetores (colunas)
    normalizedVectors = zeros(n, m);

    // Normalizando cada vetor individualmente
    for i = 1:m
        norm_i = norm(vectors(:, i)); // Calculando a norma do i-ésimo vetor
        if norm_i == 0 then
            // Se o vetor é nulo, não pode ser normalizado
            disp("Vetor nulo encontrado, não pode ser normalizado.")
        else
            normalizedVectors(:, i) = vectors(:, i) / norm_i;
        end
    end

    // Exibindo os vetores normalizados
    disp("Vetores normalizados individualmente: "), disp(normalizedVectors)
end

// Decomposição QR
function [Q, R] = qr_decomposition(A)
    [Q, R] = qr(A);
    disp("Q: "), disp(Q)
    disp("R: "), disp(R)
end

// Decomposição SVD
function [U, S, V] = svd_decomposition(A)
    [U, S, V] = svd(A);
    disp("Matriz U: "), disp(U)
    disp("Matriz Σ: "), disp(S)
    disp("Matriz V*: "), disp(V)
end

// Resolução de Sistemas
function x = resolver_sistema(A, b)
    x = A \ b;
    disp("Solução do sistema: "), disp(x)
end
//QR
function Result= resolve_SistemaQR()

// Calcula a decomposição QR
[Q,R] = qr(A);

// Calcula Q^T * b
Result = Q'*b;
disp(b_transformado);
endfunction
// Testando os algoritmos
A = [4, 1; 2, 3];
b = [1; 2];

produto_interno([1; 2], [3; 4])
[eigVals, eigVecs] = autovalores_autovetores(A)
[P, D] = diagonalizar(A)
Q = gram_schmidt(A)
normalizedVecs = normalizar_vetores_individuais([1, 2; 3, 4])
[Q, R] = qr_decomposition(A)
[U, S, V] = svd_decomposition(A)
x = resolver_sistema(A, b)
