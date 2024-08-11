
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

Os exemplos a seguir vão fazer uso da seguinte relação

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
(Ramon,20,<u>123</u>,==EngPesca==,==EP11==,60)

Alterado->(Dino,27,<u>243</u>,==Geografia==,==EP11==,60)

(Pardal,11,<u>563</u>,Aviação,Av12,100)
(Kitano,68,<u>456</u>,Geografia,Gg13,80)
  
Apesar de Dino ter alterado seu Curso o código permanece o mesmo gerando a inconsistência

<h3>Exclusão</h3>

(Ramon,20,<u>123</u>,EngPesca,EP11,60)
(Dino,27,<u>243</u>,EngPesca,EP11,60)
Apagados{
  ~~(Pardal,11,563,==Aviação==,AV12,100)~~
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
<h3>Analise Formal</h3>
->
Formalização
	Projeto por análise
		 podemos partir de cima para baixo onde buscamos a partir do agrupamento de atributos pelo projeto conceitual de mapeamento
		 Encontramos as primeiras relações
	 Projeto por síntese
		 de baixo para cima temos os relacionamentos entre atributos para construir relações
			 observa porquê uma tupla faz sentido sobre a relação dos atributos entre si.
		 Melhoramos as qualidades das relações obtidas.

<h3>Análise Formal(pt2)</h3>
[BD: Aula 19 - O que é Dependência Funcional? (youtube.com)](https://www.youtube.com/watch?v=u6JYYOR_o6E&list=PLqsF5rntN2nZ71PyONJCmTry6p4myI2Sb)
playlist do goat.
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
 {Cod, Agencia}->Cod

Transitiva

{Cod, Agencia}->Endereço

Atributo primário é uma chave candidata

parcial:
não depende da dependência total para funcionar

{Cod,Agencia}->Agencia

Total
depende da dependência total para referenciar

{Ra,Disc}->nota


$1^a$ Forma Normal
Todos os atributos multivalorados se tornam outras relações.
![[Pasted image 20240811174359.png]]
tem outros casos onde a quantidade de atributos, é pequena e pode estar como uma quantidade facilmente representável como outros atributos.
![[Pasted image 20240811174600.png]]
$2^a$ Forma Normal
relações que possuem uma representação parcial
![[Pasted image 20240811182049.png]]
$3^a$Forma Normal

extensão da $3^a$ forma

BCNF->um atributo que não é superchave definindo uma chave, e todo atributo tem de estar definindo por uma superchave.


//FDS
$4^a$ Forma Normal baseada em dependências Multivaloradas.

é a dependência entre dois conjuntos de atributos sendo essa dependência extremamente semântica

Dependencia Multivalorada Não trivial:

para cada dependência não trivial-> ela separa e se torna uma nova relação



O BD é considerado normalizado quando ele está em todas a formas normais desde a primeira até a BCNF/$4^a$ forma normal

sabemos que existem mais formas normais, porem não 

