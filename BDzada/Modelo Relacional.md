
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

para mais informações o livro do Elmarsi navate.

#<h3>Mapeamento da Generalização</h3>
para o padrão de participação total todas as entidades da generalização se tornam relações,

sobre o contexto de uma disjunção podemos fazer uma relação de "controle" com atributo de controle.

para o caso de Sobreposição o O podemos tornar fazer com que o controle se torne em suporte identificador da nossa tupla(relação) de controle.

chute o balde(cada um cada um 10000 relações)
(interpretar o Slide)


#<h3>Mapeamento de Agregação</h3>
Tudo vira relação a relação com a agregação possuindo referencia das entidades que com dentro de sua relação relacionavam.

Caso a relação dentro da agregação possua relacionamento com atributos esse relacionamento se torna uma relação.

as chaves "estrangeiras" se tornam uma chave compostas e secundária.

#<h4>PPd_1</h4>
Alt 1 -> disjunção padrão. Todas a entidade principal e as generalizações dela
viram entidades com todas as generalizações possuindo chaves estrangeiras

Alt 2->io

#<h3>Qualidade do Projeto Lógico</h3>

#<h3>Análise informal</h3>->
	Caso a explicação do projeto esteja complicada demais, ele provavelmente está incorreto e deve ser de refeito.
O famoso boca a boca , buscamos informações de outros que o fazem e colaboram
	Projetar um banco de dados relacional->agrupar atributos para formar "bons" esquemas de relações
		 sendo bom podendo ser descrito como lógico seja
		 fácil de entender, que ajuda a formular consultas corretas e como físico seja armazenada eficientemente e acesso eficiente.
	 Entidades distintas não deve estar na relação,
	 apenas chaves estrangeiras devem ser usadas para referenciar outras entidades,
	 Atributos de entidades e relacionamentos devem ser  mantidos separadamente tanto quanto possível.



	 
	Exemplo:1,lucio,77,ciencia,doutor->nike
		nike não parece fazer muito sentido para tupla
Redundância->desperdiça espaço.
#<h4>Anomalias.</h4>
Inclusão.
Alteração.
Exclusão.
#<h4>Valores nulos.</h4>
Os nulos podem ficar em uma relação separada 
#<h4>Tuplas ilegítima.</h4>
relações as quais as tuplas estão inconsistentes é um sinal óbvio de que estamos criando tuplas ilegitimas
#<h3>Analise Formal</h3>->
Formalização
	Projeto por análise
		 podemos partir de cima para baixo onde buscamos a partir do agrupamento de atributos pelo projeto conceitual de mapeamento
		 Encontramos as primeiras relações
	 Projeto por síntese
		 de baixo para cima temos os relacionamentos entre atributos para construir relações
			 observa porquê uma tupla faz sentido sobre a relação dos atributos entre si.
		 Melhoramos as qualidades das relações obtidas.

#<h4>Análise Formal</h4>
Dependência Funcional uma restrição entre dois conjuntos de atributos 
	exemplo se em pessoa temos CPF vamos ter Nome.
	123 = Mário
	234 = Jorge
	123 = Mário
	 654 = Lena
	 devemos estar atento o sentido semântico.
	 onde o atributo curso definindo a idade de alguem porem não faz muito sentido.

Controlando Consistência

->Propiedade semântica:
->Descoberta pelo projetista:estudada pelo projetista.
->Pode ser validada na instância do banco:não faz muito sentido n.