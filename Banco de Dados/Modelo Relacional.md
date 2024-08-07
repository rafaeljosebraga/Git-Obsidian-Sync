Vou atribuir a ideia de uma a relação a uma Tablea 
<h2>Atributos</h2>
 um #atributo é pode  formados por valores que por sua vez são dados da vida real abstraídos em valores numéricos, cadeias de caracteres, booleanos...etc. 

<h4>Domínio de Dados</h4>
separamos cada tipo de #atributo atributo da tupla pelo seu valor semântico, ou tipo de informação tendo cada atributo seu domínio definido por Nome, Definição Lógica, Tipo de dado e Formato. segue o exemplo->  
![[Pasted image 20240806221855.png]]
![[Pasted image 20240806222611.png]]

com todo e qualquer tipo de valor tendo como base a ideia de que são

Atômicos -> se  está escrito endereço é o endereço como um todo (exemplo: Rua Esmeralda não pode ser recuperado como Rua, Esmeralda /*eu sei, é um péssimo exemplo*/).

Monovalorado -> Pode ter apenas um valor, ("uma pessoa pode ter mais de um numero de telefone, assim podendo assim haver um valor multivalorado, mas para o nosso banco de dados esse numero de telefone só é um caso contrário temos um problema que SPOILER será um problema a ser lidado").

curiosidade: O significado do nulo/null
![[Pasted image 20240806225044.png]]

<h2>Forma de representar as relações do Modelo Relacional</h2>

Ao fazer uma relação no nosso modelo lógico temos a seguinte definição
![[Pasted image 20240806223128.png]]
dado pelo exemplo:
![[Pasted image 20240806223147.png]]


podemos começar  a modelar a partir desta definição, sendo que quanto mais atributos maior será o nivel de grau.

o grau é definido pela quantidade de atributos("tipos valores"), que aquela relação suporta, no exemplo de Alunos acima o nosso grau é definido em 3, pois são 3 atributos sendo estes "Nome, RG, Idade" .

a representação dessas relações em instâncias:

![[Pasted image 20240806225325.png]]

<h2>Chaves no Modelo Relacional</h2>

A #superchave é um tipo de #atributo definido como conjunto de atributos que definem aquela tupla como  única.

#chave é uma #superchave definida que como dita na definição de #superchave identificando a tupla em questão como única sendo esta oque podemos chamar de super chave minima(o conjunto mínimo necessário para que se tenha uma super chave na tupla).

<h3>Chaves Candidatas</h3>
![[Pasted image 20240806191624.png]]

<h4>Restrições de Integridade em Chaves</h2>
Restrição de integridade da chave(Unicidade): Por fazer o papel de identificar a tupla a chave não pode Não pode repetir em outras tuplas.

Restrição de integridade da Entidade: A chave primária em hipótese alguma pode conter  o valor nulo.

<h3>Chave Estrangeira</h3>
A #chaveEstrangeira tem seu domínio definido ao mapeamento exato de uma #chave que vem de uma outra relação sendo aquilo que vai servir de referencia de uma relação a outra.
<h4>Restrições de Integridade referencial</h2>
uma #chaveEstrangeira não pode referenciar a uma chave nula
![[Pasted image 20240806230552.png]]

<h2>Mapeamento entre Esquemas</h2>
A ideia é fazer com que nosso modelo de ER(entidade e relacionamento)

possa ser mapeado para o Modelo Relacional

1 -> <h4>Entidades normais</h4>

1.1 Toda entidade se torna em uma relação com todos os seus atributos(e características?).

1.2 Toda chave da entidade se torna chave da relação e agora podemos definir melhor todas as outras chaves em potencial. sendo essa as chaves secundária, terciárias e em diante.

2 -><h4>Entidades Fracas</h4>
2.1 Se torna uma relação porem deve receber uma chave estrangeira onde se concatena uma chave com tanto suas chaves fracas e uma chave forte exterior

disclaimer(nós pegamos a chave usando a relação mais próxima e não diretamente de sua Entidade não mapeada)

2.2 Exemplo:

((INSERIR IMAGEM))

no exemplo vemos que temos duas entidades fracas em sequencia a turma recebe normalmente de Disciplina a chave sigla, porem aula prática precisa das duas informações 
tanto do número da turma e a sigla da disciplina, pense que quanto maior a profundidade maior a quantidade de chaves estrangeiras referenciando o caminho passado como uma lista em C com todos os elementos apontando para seus anteriores.

3<h3>Ordem e cardinalidade</h3>
3.1 :cardinalidade 1 pra 1

para mapearmos esse tipo de relacionamento escolhemos qual entidade que quando relação vai ficar com menos atributos nulos(null), os atributos não chave ficam na entidade escolha, incluindo atributos  criados dentro do relacionamento
->preservar a consistência do banco

3.2:exemplo do Chefia

((imagem exemplar))

não entendi.(Analise Semântica );

3.3:exemplo gerencia

((imagem exemplar))

Participação total possui prioridade a receber chaves e atributos do relacionamento quando mapeando.

disclaimer -> temos uma Restriçao de null (um "hazard") pois nesse caso gerente por participação total não pode constar inconsistências

3.4 Politica no campus vai chegar   

((imagem exemplar))

Diretor recebe o nome de diretor anterior

3.5 participação total para os dois lados

((Imagem exemplar))

Mapeamento alternativo -> agregação em uma única relação("agregação")

4 <h4>1:N</h4>
4.1 Professor e Disciplina 

((Imagem exemplar))

O lado onde chegamos em N possui prioridade 

4.2 Professor e Disciplina(participação total)

restrição de NULL segue o exemplo anterior

4.3 <h5>N:N</h5>
((imagem exemplar))

tudo vira relação e o relacionamento em si se torna uma relação que herda chave de suas Entidades.


<h3>Se possível tirar foto o exemplo de lúcio junto a questão  no passo 5</h3>
5 Exemplo

((Imagem exemplar))

6 -> TERNÁRIO? RELAÇÃO PRA TODO LADO 

cuidado com as chaves!!

6.1 Exemplo do aluno único

a chave identificadora de aluno se torna uma referencia  que será deslocada para outra relação e vir de lá a referencia.

6.2Exemplo : da disciplina em relação ternaria com menos entidades 

a tupla inteira se torna apenas uma.

7 Multivalorados

os multivalorados podem ser uma relação com chave estrangeira referenciando a relação principal (como uma entidade fraca)

para mais informações o livro do Elmarsi navate.


<h3>Mapeamento de Agregação</h3>
Tudo vira relação a relação com a agregação possuindo referencia das entidades que com dentro de sua relação relacionavam.

Caso a relação dentro da agregação possua relacionamento com atributos esse relacionamento se torna uma relação.

as chaves "estrangeiras" se tornam uma chave compostas e secundária.


<h3>Mapeamento da Generalização</h3>
para o padrão de participação total todas as entidades da generalização se tornam relações,

sobre o contexto de uma disjunção podemos fazer uma relação de "controle" com atributo de controle.

para o caso de Sobreposição o O podemos tornar fazer com que o controle se torne em suporte identificador da nossa tupla(relação) de controle.

chute o balde(cada um cada um 10000 relações)
(interpretar o Slide)


<h4>PPd_1</h4>
Alt 1 -> disjunção padrão. Todas a entidade principal e as generalizações dela
viram entidades com todas as generalizações possuindo chaves estrangeiras

Alt 2->io

<h3>Qualidade do Projeto Lógico</h3>

<h3>Análise informal</h3>->
O famoso boca a boca , buscamos informações de outros que o fazem e colaboram
	Projetar um banco de dados relacional->agrupar atributos para formar "bons" esquemas de relações
		 sendo bom podendo ser descrito como lógico seja
		 fácil de entender, que ajuda a formular consultas corretas e como físico seja armazenada eficientemente e acesso eficiente.
	 Entidades distintas não deve estar na relação,
	 apenas chaves estrangeiras devem ser usadas para referenciar outras entidades,
	 Atributos de entidades e relacionamentos devem ser  mantidos separadamente tanto quanto possível.
	Caso a explicação do projeto esteja complicada demais, ele provavelmente está incorreto e deve ser de refeito.
	 
	Exemplo:1,lucio,77,ciencia,doutor,nike
		nike não parece fazer muito sentido para tupla
Redundância->desperdiça espaço.
#<h4>Anomalias.</h4>
<<<<<<< HEAD
//Deve ser melhor compreendido.
Inclusão.
Alteração.
Exclusão.
#<h4>Valores nulos.</h4>
=======
O nosso exemplo usa a seguinte relação

<h>Pessoa:{Nome, Idade,ID, nomeCurso, IDcurso, cargaHora}</h>

<h3>Inclusão</h3>
(Ramon,20,<u>123</u>,EngPesca,EP11,==60==)
(Dino,27,<u>243</u>,EngPesca,EP11,==60==)
(Pardal,11,<u>563</u>,Aviação,Av12,100)
(Kitano,68,<u>456</u>,Geografia,Gg13,80)
==inserida==->(Elésio,23,<u>100</u>,==EngPesca==,EP11,==80==)
  
  nesse caso ao incluir a tupla do Elésio temos uma anomalia pois engenharia de pesca possui
  uma inconsistência na carga horária do Elésio. 
  
<h3>Alteração</h3>
(Ramon,20,<u>123</u>,==EngPesca,EP11==,60)
Alterado->(Dino,27,<u>243</u>,==Geografia,EP11==,60)
(Pardal,11,<u>563</u>,Aviação,Av12,100)
(Kitano,68,<u>456</u>,Geografia,Gg13,80)
  
  Apesar de Dino ter alterado seu Curso o código permanece o mesmo gerando a inconsistência

<h3>Exclusão</h3>

(Ramon,20,<u>123</u>,EngPesca,EP11,60)
(Dino,27,<u>243</u>,EngPesca,EP11,60)
Apagados{
  ~~(Pardal,11,563,Aviação,AV12,100)~~
  ~~(Pardal,11,563,EngPesca,EP11,60)~~
}
(Kitano,68,<u>456</u>,Geografia,Gg13,80)

 Ao apagarmos Pardal perdemos totalmente a existência de Aviação seu código e carga horária gerando uma inconsistência.

Lúcio apontou que uma possivel solução para os problemas apresentados 
utilizando de uma relação para representar Curso e alterando a relação Pessoa

<h>Pessoa:{Nome, Idade, <u>ID</u>,<u>IDcurso</u>(estrangeira)}</h>
(Ramon,20,<u>123</u>,EngPesca,EP11,60)
(Pardal,11,<u>563</u>,Av12)

<h>Curso:{NomeCurso, <u>IDcurso</u>, cargaHora}</h>
(Aviação,Av12,100)
(EngPesca,EP11,60)

 
<h4>Valores nulos.</h4>
Os nulos podem ficar em uma relação separada 
//mais detalhes são necessários
<h4>Tuplas ilegítima.</h4>
relações as quais as tuplas estão inconsistentes (em exemplo uma tabela com uma chave estrangeira essa a qual é um atributo pode se ter um problema de uma referencia ) é um sinal óbvio de que estamos criando tuplas   ilegítimas 


//mais detalhes são necessários
<h3>Analise Formal</h3>->
Formalização
	Projeto por análise
		 podemos partir de cima para baixo onde buscamos a partir do agrupamento de atributos pelo projeto conceitual de mapeamento
		 Encontramos as primeiras relações
	 Projeto por síntese
		 de baixo para cima temos os relacionamentos entre atributos para construir relações
			 observa porquê uma tupla faz sentido sobre a relação dos atributos entre si.
		 Melhoramos as qualidades das relações obtidas.

<h3>Análise Formal(pt2)</h3>

Dependência Funcional uma restrição entre dois conjuntos de atributos 
	exemplo se em pessoa temos CPF vamos ter Nome.
	
		Devemos procurar essa comparação na Tupla ->sendo esse exemplo ID para   Nome||A ou mais atributos para B ou mais atributos
	Exemplo
	123 = Mário
	234 = Jorge
	123 = Mário
	 654 = Lena
	 
 devemos estar atento o sentido semântico.
	 onde o atributo curso definindo a idade de alguem porem não faz muito sentido.

Controlando Consistência

->Propriedade semântica:a sua idade é estereotipada pelo seu curso?
->Descoberta pelo projetista:estudada pelo projetista.
->Pode ser validada na instância do banco:não faz muito sentido não.
->Propriedade semântica: a tupla faz sentido com o contexto.
->Descoberta pelo projetista: detalhes da tupla estudada pelo projetista.
->Pode ser validada na instância do banco: #Esqueci.

Normalização->Reduzir conjuntos ruins para aumentar a consistência da relação

para normalizar a partir da decomposição sem com que aconteça sem que se perca junção

Definição inicial

[Dependência funcional]()
Trivial
X->Y
 {Cod, Agencia}->Agencia
 {Cod, Agencia}-Cod

Transitiva

{Cod, Agencia}->Endereço

Atributo primário é uma chave candidata

parcial
não depende da dependência total para funcionar

{Cod,Agencia}->Agencia

Total
depende da dependência total para referenciar

{Ra,Disc}->nota

Regras de inferência:
REVER SLIDE.


$1^a$ Forma Normal também se aplica a chaves secundárias

Atributos devem ser Atômicos e Monovalorados

Normalizando perante a estes parâmetros
outros exemplos nos slides de Lúcio
ex:

Aluno={nome{nome_pais}}
retiramos as relações aninhadas no caso "nome_pais"
->Aluno={nome,nome_pai,nome_mãe}

$2^a$ Forma Normal

Ministra={<u>Professor,Sigla</u>,LivroTexto,LivroExerc} ->correto

Turma= {<u>NúmeroT,Sigla</u>,Sala,No.Horas}->Incorreto a solução

//
Turma= {<u>NúmeroT,</u>Sigla,Sala}

adicionada->Disciplina{<u>Sigla</u>,No.horas}

Ministra={<u>Professor,Sigla</u>,LivroTexto,LivroExerc} ->correto se transitividade não gerasse inconsistência que solucionada na->

$3^a$Forma Normal
se restringe apenas ao caso da transitividade ser feita com atributos e não chaves.
Ministra={<u>Professor,Sigla</u>,LivroTexto,LivroExerc}

//

Ministra={<u>Professor,Sigla</u>,LivroTexto}
retirando transitividade
Livro={<u>LivroTexto</u>,LivroExerc}

extensão da $3^a$ forma

BCNF->um atributo que não é superchave definindo uma chave, e todo atributo tem de estar definindo por uma superchave.

$4^a$ Forma Normal baseada em dependências Multivaloradas.

é a dependência entre dois conjuntos de atributos sendo essa dependência extremamente semântica

Dependencia Multivalorada Não trivial:

para cada dependência não trivial-> ela separa e se torna uma nova relação



O BD é considerado normalizado quando ele está em todas a formas normais desde a primeira até a BCNF/$4^a$ forma normal


