
#<h2>Mapeamento entre Esquemas</h2>
A ideia é fazer com que nosso modelo de ER(entidade e relacionamento)
possa ser mapeado para o Modelo Relacional

1 -> #<h4>Entidades normais</h4>

1.1 Toda entidade se torna em uma relação com todos os seus atributos(e caracteristicas?).

1.2 Toda chave da entidade se torna chave da relação e agora podemos definir melhor todas as outras chaves em potencial. sendo essa as chaves secundária,terciárias e em diante.

2 ->#<h4>Entidades Fracas</h4>
2.1 Se torna uma relação porem deve receber uma chave estrangeira onde se concatena uma chave #superchave com tanto suas chaves fracas e uma chave forte exterior

disclaimer(nós pegamos a chave usando a relação mais próxima e não diretamente de sua Entidade não mapeada)

2.2 Exemplo:

((INSERIR IMAGEM))

no exemplo vemos que temos duas entidades fracas em sequencia a turma recebe normalmente de Disciplina a chave sigla,porem aula prática precisa das duas informações 
tanto do número da turma e a sigla da disciplina, pense que quanto maior a profundidade maior a quantidade de chaves estrangeiras referenciando o caminho passado como uma lista em C com todos os elementos apontando para seus anteriores.

3#<h3>Ordem e cardinalidade</h3>
3.1 :cardinalidade 1 pra 1

para mapearmos esse tipo de relacionamento escolhemos qual entidade que quando relação vai ficar com menos atributos nulos(null), os atributos não chave ficam na entidade escolha,incluindo atributos  criados dentro do relacionamento
->preservar a consistência do banco

3.2:exemplo do Chefia

((imagem exemplar))

não entendi.(Analise Semântica );

3.3:exemplo gerencia

((imagem exemplar))

Participação total possui prioridade a receber chaves e atributos do relacionamento quando mapeando.

disclaimer -> temos uma Restrilçao de null (um "hazard") pois nesse caso gerente por participação total não pode constar inconsistências

3.4 Politica no campus vai chegar   

((imagem exemplar))

Diretor recebe o nome de diretor anterior

3.5 participação total para os dois lados

((Imagem exemplar))

Mapeamento alternativo -> agregação em uma única relação("agregação")

4 #<h4>1:N</h4>
4.1 Professor e Disciplina 

((Imagem exemplar))

O lado onde chegamos em N possui prioridade 

4.2 Professor e Disciplina(participação total)

restrição de NULL segue o exemplo anterior

4.3 #<h5>N:N</h5>
((imagem exemplar))

tudo vira relação e o relacionamento em si se torna uma relação que herda chave de suas Entidades.


#<h3>Se possível tirar foto o exemplo de lúcio junto a questão  no paso 5</h3>
5 Exemplo

((Imagem exemplar))

6 -> TERNÁRIO? RELAÇÃO PRA TODO LADO 

cuidado com as chaves!!

6.1 Exemplo do aluno único

a chave indentificadora de aluno se torna uma referencia  que será deslocada para outra relação e vir de lá a referencia.

6.2Exemplo : da disciplina em relação ternaria com menos entidades 

a tupla inteira se torna apenas uma.

7 Multivalorados

os multivalorados podem ser uma relação com chave estrangeira referenciando a relação principal (como uma entidade fraca)

para mais informações o livro do Elmasi.




