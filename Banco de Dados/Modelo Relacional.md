Vou atribuir a ideia de uma a #relação a uma Tabela
![[Pasted image 20240806230841.png]]

tabela esta que é composta de Atributos valorados e definidos a partir de seus domínios definidos dentro das {.,.,.} nas tuplas.
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

<h2>Mapeamento do ER e ERX Para o Modelo Relacional</h2>
A ideia é fazer com que nosso modelo de ER(entidade e relacionamento)
possa ser mapeado para o Modelo Relacional

<h4>1 -> Entidades normais</h4>

1.1 Toda #entidade se torna em uma #relação com todos os seus atributos

1.2 Toda chave da entidade se torna chave da relação e agora podemos definir melhor todas as outras chaves em potencial.
![[Pasted image 20240806234149.png]]
 sendo essa as chaves secundária, terciárias e em diante, com essas chaves obedecendo as restrições de chave. segue o exemplo:
 ![[Pasted image 20240806234615.png]]

<h4>2 ->Entidades Fracas</h4>
2.1 As entidades fracas se tornam uma relação que herda sim todos os seus atributos e chaves com apenas o adicional de uma #chaveEstrangeira referenciando uma relação provinda de uma entidade não fraca.
![[Pasted image 20240807001806.png]]


2.2 Exemplo:

![[Pasted image 20240807001241.png]]


no exemplo vemos que temos duas entidades fracas em sequencia a turma recebe normalmente de Disciplina a chave sigla, porem aula prática precisa das duas informações 
tanto do número da turma e a sigla da disciplina, pense que quanto maior a profundidade maior a quantidade de chaves estrangeiras referenciando o caminho passado como uma lista em C com todos os elementos apontando para seus anteriores.
![[Pasted image 20240807001702.png]]

sigla segue percorrendo referenciando do ultimo(aula pratica) até disciplina de lá sendo a chave que é referenciada.
<h3>3->Ordem e cardinalidade</h3>

3.1 :
<h4>Cardinalidade 1 pra 1</h4>
A ideia principal é diminuir a quantidade de tuplas com valor nulo, em outras palavras é a ideia de fazer a escolha sobre qual das entidades/relações vai herdar a referência da outra e se for o caso, também herda os atributos da relação entre eles.

Temos a prioridade semântica onde fazemos referência sobre qual a qual foi decidido a prioridade semântica.
![[Pasted image 20240807205510.png]]

aqui existe um problema, são duas interpretações, porem uma parece ser mais correta que a outra.

De acordo com a explicação de Lucio podemos afirmar que um empregado chefia um departamento ou que um departamento é chefiado por um empregado/"Chefe", porem no modelo relacional vamos entender que dada a primeira forma temos vários empregados podendo chefiar departamento, sendo que a nossa implicação é de 1 pra 1 é queremos um departamento sendo chefiado por este um alguem, mesmo com espaços abertos a interpretação, é mais cabível  a segunda forma pois o departamento referenciar o seu chefe(no singular), nos permite falar que cada departamento este que seja um único departamento referencie o seu único chefe.
<h4>Cardinalidade 1:1-> Participação Total</h4>
A relação da entidade em participação total possui prioridade a receber chaves estrangeiras e atributos do relacionamento quando mapeando, mesmo considerando o nosso exemplo anterior onde provavelmente cada projeto receberia referencia para seu gerente, nesse caso a participação total indica prioridade.

![[Pasted image 20240808095652.png]]

Disclaimer -> temos uma Restrição de null (um "hazard") pois nesse caso gerente por participação total não pode constar inconsistências, portanto codProjeto deve ser definido como não nulo ->$codProjeto^*$ .

3.4 Politica no campus vai chegar   

Diretor recebe o nome de diretor anterior
![[Pasted image 20240808103955.png]]


3.5 participação total para os dois lados
em teoria seria o algoritmo a ser seguido pelo padrão onde escolhemos a prioridade semântica. 
entretanto temos duas participações totais, estas que vão conflitar, pois vamos precisar de referencia para os dois lados, sendo assim vamos seguir um mapeamento alternativo
Mapeamento alternativo -> agregação em uma única relação("agregação").

![[Pasted image 20240808104146.png]]

<h4>4 >Mapeamento de 1:N</h4>
4.1 Professor e Disciplina 

![[Pasted image 20240808105343.png]]

varias disciplinas se referem a um professor, mostramos isso com uma referencia de professor dentro de professor.

4.2 Professor e Disciplina(participação total)
![[Pasted image 20240808105531.png]]

restrição de NULL segue o exemplo anterior
o atributo professor em Disciplina não pode ser nulo por causa da participação total.

5<h5>Cardinalidade N:N ou M:N</h5>
![[Pasted image 20240808164320.png]]


tudo vira relação e o relacionamento em si se torna uma relação que herda chave de suas Entidades. 

<h3>Se possível tirar foto o exemplo de lúcio junto a questão  no passo 5</h3>
5 Exemplo
![[Pasted image 20240808200219.png]]


![[Pasted image 20240808200052.png]]

só possuo a minha tentativa de modelar o passo 5, um exemplo concreto se torna necessário.

6 -> 
<h3>Relacionamentos de Maior grau</h3>
relacionamentos ternários ou com mais entidades 
para o caso N:N:N 
![[Pasted image 20240808232515.png]]

segue a regra do N:M todos se tornam relações e a relação entre as entidades se torna uma relação que faz referência,

6.1 quando 1:N:N

O exemplo de um aluno para vários professores e disciplinas, acontece as mesmas coisas  da relação anterior, porem na referencia de aluno em monitora(ria) não é uma chave.
![[Pasted image 20240808233422.png]]

6.2Exemplo : Ternário com uma auto relação assim como definido o exemplo de sucessor e antecessor nesse caso temos uma situação de muitos para muitos dentro de um ternário, como regra participa tem duas referencias para a disciplina e uma para curso.
![[Pasted image 20240809094516.png]]


7 Multivalorados

os multivalorados podem ser uma relação com chave estrangeira referenciando a relação principal (como uma entidade fraca), o caso especial Nomes dos Pais em vermelho, que só é uma solução possivel quando este multivalorado gera uma quantidade pequena de atributos, no exemplo "Pai,Mae";
![[Pasted image 20240809095001.png]]

Esse tópico se torna mais claro quando analisamos as restrições e as regrinhas do (link) 

Exercício-mapear para o Modelo Relacional:
![[Pasted image 20240809102452.png]]
![[Pasted image 20240809112754.png]]
Erro encontrado-> "refreg" não é chave, pois em relações 1:1 não se cria chaves.

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

Alt 2->

<h3>Qualidade do Projeto Lógico</h3>

<h3>Análise informal</h3>->
O famoso boca a boca , buscamos informações de outros que o fazem e colaboram
	Projetar um banco de dados relacional->agrupar atributos para formar "bons" esquemas de relações
		 sendo interessante poder ser descrito como lógico,
		 fácil de entender, que ajuda a formular consultas corretas e como físico seja armazenada e acesso de forma eficiente.
	 Entidades distintas não deve estar na relação,
	 apenas chaves estrangeiras devem ser usadas para referenciar outras entidades,
	 Atributos de entidades e relacionamentos devem ser  mantidos separadamente tanto quanto possível.
	Caso a explicação do projeto esteja complicada demais, ele provavelmente está incorreto e deve ser de refeito.
	 
	Exemplo:1,lucio,77,ciencia,doutor,nike
		nike não parece fazer muito sentido para tupla
Redundância->desperdiça espaço.
<h3>Anomalias.</h3>

//Deve ser melhor compreendido.
Inclusão.
Alteração.
Exclusão.

<h4>Valores nulos.</h4>
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


