#projeto_análise_de_algoritmo  #ordenação
É um [[Algoritmo]] de ordenação, onde a partir de um pivô na ultima posição do vetor é colocado em uma posição de valores menores e maiores que ele, e fazemos dele uma chamada recursiva para o vetor a direita e esquerda do nosso local do pivô.

![[Pasted image 20241203154718.png]]

note que a cada camada de chamadas recursivas estamos abstraindo que já foi feito
a operação de achar o local do pivô,e adentrar as duas chamadas recursivas.

O peso deste algoritmo é em dois fatores,

O primeiro é a quantidade de nós, onde sabemos que como vamos resumir todos as recursões a pivôs(vetor de tamanho 1), temos então a quantidade de nos da arvore como custo ou seja O(n)

 Para o Segundo temos um X de verificações necessárias e esse peso se dá pela  [[esperança]] desse x onde podemos aferir no melhor caso $lg(n)$ //A prova dada pelo livro pode ser útil para a compreensão deste.

Alberto chega no resultado que a média do custo de ordenação por [[QuickSort]] é de $\theta(nlogn)$.