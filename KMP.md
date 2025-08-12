KMP como mágica, partido pela ideia de nodos

tadeu introduz uma sequencia de letras 
aabccaabcabb  e quer identificar abca dentro dessa sequência

podemos realizar esse algoritmo pensando por um dígrafo onde precisamos de um estado inicial e um outro estado final

montando esse dígrafo monta em cima de um processo onde 

passamos pelos nodos ()-> a -> b -> c -> a->(o). 

Se passarmos pela sequencia correta chegamos ao resultado final, porem no meio do caminho podemos ter leituras incorretas, então a partir do sufixo podemos reintegrar ao melhor estado anterior dado o seu conjunto. 

No fim a partir de um automato finito podemo afirmar que procuramos então o maior sufixo atual presente no automato, onde no pior caso se não houver um sufixo cabível ao problema, então podemos ir a estaca zero.

Em suma é uma estrutura que possui um caminho que identifica do início ao fim a sequencia correta, onde armazenamos cada estado e verificamos o maior candidato possível para progredir partir de lá.

	Podemo verificar os estados desse automato por mapeamento direto assim podemos ter um método O(1) para acesso na estrutura.