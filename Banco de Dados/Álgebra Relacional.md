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

![[Pasted image 20240820143420.png]]

De forma simples é recuperar apenas colunas de atributos especificados pela projeção
![[Pasted image 20240820143733.png]]
De toda forma é bom estar atento pois esta operação não retorna valores repetidos ou seja, dependendo se tivermos dois alunos que estão cursando computação só será referido apenas um computação dado o exemplo:
![[Pasted image 20240820143944.png]]

