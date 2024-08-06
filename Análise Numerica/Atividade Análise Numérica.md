Rafael José Braga Coelho
1 letra A.![[Pasted image 20240728234753.png]]
conjunto solução![[Pasted image 20240728234824.png]]


letra B![[Pasted image 20240728234933.png]]
conjunto solução![[Pasted image 20240728234955.png]]


códigos alterados e utilizados na 1:
function [coeficientes, constantes]=escalonar(coeficientes, constantes)
    n_linhas = size(coeficientes)(1);
    n_colunas = size(coeficientes)(2);
    
    for k=1: n_linhas-1 // Linha pivô atual
    
        for i = k+1: n_linhas // Linhas abaixo da linha do pivô
            m = coeficientes(i,k)/coeficientes(k,k);    
            
            for j=k: n_colunas // Elementos da linha atual
                coeficientes(i,j) = coeficientes(i,j) - m*coeficientes(k,j);
            end
            
            
            constantes(i) = constantes(i) - m*constantes(k);
        end
    end
end

function [copia_coeficientes, copia_constantes]=eliminacao_gaussiana_pivotamento_parcial(coeficientes, constantes)
    n_linhas = size(coeficientes)(1);
    
    copia_coeficientes = coeficientes;
    copia_constantes = constantes;
    
    for k=1: n_linhas-1
        pivo = copia_coeficientes(k,k);
        
        p = k;
        
        for i=k+1: n_linhas // Procurando se há algum elemento que é maior em módulo que o pivô
            
            if abs(copia_coeficientes(i,k)) > abs(copia_coeficientes(k,k))  
                pivo = copia_coeficientes(i,k);
                p = i;
            end         
        end
        
        // Se há algum elemento que é maior em módulo que o pivô, trocaremos as linhas, de modo que
        // a linha desse elemento será a nova linha com o pivô
        if p ~= k 
            [copia_coeficientes, copia_constantes] = trocar_linhas(copia_coeficientes, copia_constantes, k, p);
        end
        
        // Escalonamento comum
        [copia_coeficientes, copia_constantes] = escalonar(copia_coeficientes, copia_constantes);
    end
end

function r=CalculaSolucao(M, R)
    //Retorna solucao dos metodos interativos
    aux = 0
    nlinhas = size(M, 1) //Pega o numero de linhas da matriz
    ncol = size(M, 2) //Pega o numero de colunas da matriz

    R(nlinhas) = R(nlinhas) / M(nlinhas,ncol) // Calcula o ultimo x
    for i = nlinhas-1 : -1:  1  // Varia da ultima a primeira linha
        for j = ncol : -1 : i+1   // Vare cada coluna substituindo as solucoes
            aux = aux + M(i,j)*R(j)
        end
        R(i) = (R(i) - aux) / M(i,i)
        aux=0
    end
    r = R
endfunction

//criando matriz de hilbert
A=zeros(12,12);
i=1;j=1;
  for i = 1:12
    for j = 1:12
        
      A(i,j)=round((1/((i)+(j)+1)) * 1e4) / 1e4;

    end
  end


questão 2 antes das letras
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