

1 letra A.![[Pasted image 20240728234753.png]]
conjunto solução![[Pasted image 20240728234824.png]]


letra B![[Pasted image 20240728234933.png]]
conjunto solução![[Pasted image 20240728234955.png]]


códigos alterados e utilizados na 1:

2 antes das letras
![[Pasted image 20240728184956.png]]

permanece esparça no mesmo padrão com a eliminação de gauss removendo a parte triangular inferior.

letra a)

$-y_{k-1} + 2y_k - y_{k+1} = 8 / (n + 1)^2,  k = 1, 2, ..., n$

![[Pasted image 20240728204543.png]]

b
![[Pasted image 20240728205032.png]]
código da função alterada

function vetor_solucao=eliminacao_gaussiana_tridiagonal(subdiagonal, diagonal, superdiagonal, constantes)
    
    n = size(subdiagonal, 1); 

    superdiagonal_ajustada = zeros(n, 1);
    constantes_ajustadas = zeros(n, 1);
    
    vetor_solucao = zeros(n, 1);

    superdiagonal_ajustada(1) = superdiagonal(1) / diagonal(1);

    for i = 2:n - 1
        superdiagonal_ajustada(i) = superdiagonal(i) / (diagonal(i) - subdiagonal(i) * superdiagonal_ajustada(i - 1));
    end

    constantes_ajustadas(1) = constantes(1) / diagonal(1);

    for i = 2:n
        constantes_ajustadas(i) = (constantes(i) - subdiagonal(i) * constantes_ajustadas(i - 1)) / (diagonal(i) - subdiagonal(i) * superdiagonal_ajustada(i - 1));
    end

    vetor_solucao(n) = constantes_ajustadas(n);

    for i = n - 1: -1: 1
        vetor_solucao(i) = constantes_ajustadas(i) - superdiagonal_ajustada(i) * vetor_solucao(i + 1);
    end
    
    // Por imprecisão numérica, valores que deveriam ser zero podem ficar muito pequenos mas não zerar de fato
    // Então, definimos o limiar onde, se o valor é menor que esse limiar, então o valor na verdade deveria ser zero
    // Substituimos esses valores por 0
    tolerancia = 1e-15;
    vetor_solucao(abs(vetor_solucao) < tolerancia) = 0;
endfunction