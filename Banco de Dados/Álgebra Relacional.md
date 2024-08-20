Álgebra relacional, consiste inteiramente de operações que podem ser feitos com tabelas em bancos de dados.

![[Pasted image 20240820141429.png]]
<h2>Seleção</h2>
Segue o modelo de como é contruído uma seleção
![[Pasted image 20240820143240.png]]
Considerando a seguinte  relação 
![[Pasted image 20240820141638.png]]
Aqui fazemos uma operação de seleção  usando o simbolo sigma buscamos todas tuplas da tabela Aluno onde o atributo curso tenha seu valor descrito como "Informática", assim é retornado uma tabela que possua todos o Alunos com esta característica.
![[Pasted image 20240820141925.png]]

![[Pasted image 20240820141719.png]]

Nesse exemplo temos uma seleção como a anterior mas com um operador AND onde podemos ver também o uso de um valor numérico onde vemos idade >20 nesse caso vamos fazer da seguinte maneira->
buscamos todas as tuplas na tabela que possua o valor no atributo curso="Computação",e que no atributo idade possua um valor maior que 20.
![[Pasted image 20240820142452.png]]

\\\\(Fazer um exemplo para com o OR)
<h2>Projeção</h2>
![[Pasted image 20240820143420.png]]

De forma simples é recuperar apenas colunas de atributos especificados pela projeção
![[Pasted image 20240820143733.png]]
De toda forma é bom estar atento pois esta operação não retorna valores repetidos ou seja, dependendo se tivermos dois alunos que estão cursando computação só será referido apenas um computação dado o exemplo:
![[Pasted image 20240820143944.png]]

Com o próximo exemplo podemos ver a combinação de mais de uma operação com uma precedência dada pelos parenteses.
Passo_1:
![[Pasted image 20240820144201.png]]
Passo_2:
![[Pasted image 20240820144224.png]]

entender comutação.
![[Pasted image 20240820144456.png]]
<h2>Renomear</h2>
![[Pasted image 20240820144624.png]]
Criando a tabela de alunos de computação
![[Pasted image 20240820144833.png]]
<h2>Operações sobre Conjuntos</h2>
![[Pasted image 20240820145234.png]]
<h3>Onion</h3>
A união é nada mais que a união de tuplas das relações funcionando da forma mais intuitiva o possível junta as tuplas porem por via de regra repetidos não podem ser representados.
![[Pasted image 20240820145404.png]]

<h3>Diferença de Conjuntos</h3>
A diferença é dada pelo que já de diferente entre dois conjuntos, considerando o que resta da tabela a esquerda do operador $(-)$
tabela laranja do $Aluno-Professor$,tabela vermelha do $Professor-Aluno$
![[Pasted image 20240820150133.png]]

<h3>Produto Cartesiano</h3>
O produto cartesiano gera uma tabela relacionando cada tupla para cada tupla onde no caso de 3x2 é gerado 6 tuplas totais;
![[Pasted image 20240820150701.png]]
Agora dado todos os operadores básicos podemos formar combinações dos mesmo em função da eficiência

detalhar sobre atividades relacionadas com os tópicos acima
<h2>Junção</h2>

Tambem chamada como "join" temos a do dado slide, a junção é a combinação de operações dentro do modelo físico podendo conseguimos .
de forma simples a junção é formada da mesma forma que os outros operadores, dando uma ideia de uma função, 
de fato a unica dcoisa que uda de verdade é a condição colocada em pequeno no meio onde fazemos uma separação desprojetando todas as tuplas com valores iguais em uma de suas tabelas
((Slide))
<h3>Junções Internas</h3>
((slide))
<h4>Theta Junção</h4>
junção padrão onde NomeA=Nome 
->projeta toda tupla onde os valores ditados são iguais.
((Slide))//com erro 
<h4>Equi Junção</h4>
funciona de forma similar a Junção theta,((Não compreendi))
<h4>Junção Natural</h4>
Compara as duas tabelas onde fazemos os conjuntso referências 
<h3>Junções Externas</h3>