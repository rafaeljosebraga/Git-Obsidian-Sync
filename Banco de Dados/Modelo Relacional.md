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

curiosidade: Os significados do nulo/null
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

<h5>5->Cardinalidade N:N ou M:N</h5>
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

O exemplo de um aluno para vários professores e disciplinas, acontece as mesmas coisas  da relação anterior, porem na referencia de aluno em monitora(ria) não é uma chave dada a regra de mapeamento 1:1.
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

Para generalizarmos o problema, vamos separar o contexto, pois devemos implementar as relações de forma independente da agregação para só depois focarmos na agregação, 
analisando de forma separada a agregação vai ter chaves estrangeiras de suas relações geradoras.

nesse caso especifico de N:N percebe-se que consulta é totalmente capaz de substituir atende, então atende não é modelado e sim apenas consulta.
![[Pasted image 20240809142927.png]]

Porem nesse caso abaixo temos uma mais uma exceção, onde atende possui um atributo.
neste caso a modelagem anterior não contemplaria DataPrimeiraC, assim consideramos tanto consulta e atende como sendo relações diferentes com cada uma portando seus atributos conforme o modelo ERX.

![[Pasted image 20240809143116.png]]

<h3>Mapeamento da Generalização</h3>
Lucio separou as soluções em Alternativas acompanhadas pelos procedimentos padrões, com isso irei dar uma breve explicação da terminologia apresentada pelos SLIDES de lúcio
	

<h4>Alt 1</h4>
O primeiro procedimento padrão se apega na CEG(A entidade "superclasse")
onde ela continua capaz de fazer as sua relações normalmente garantindo referencia de suas relações/entidades filhas ou especializações

PPdr 1 -> 
	Na alternativa 1 todas as relações fazem referência a chave relação pai, contemplando as entidades especializadas e mantendo as relações com a entidade pai, a relação pai possui um indicador para saber qual é a classe. 
![[Pasted image 20240809180720.png]]

PPdr 2->
	Na alternativa 2 todas as relações continuam fazendo referencia a relação pai porem o atributo de controle(AtC) não é usado pois temos um $O$ de sobreposição assim tirando o sentido de especificar as subrelações. 
![[Pasted image 20240809181929.png]]

PPdr 3->
	Na alternativa 3 se continua com o mesmo algoritmo do overlap, porem o Atributo de controle(AtC) é multivalorado portanto, em função de manter a nossa variável de controle ela é levada para uma outra relação criada justamente para fazer o controle das especializações referenciando a relação pai(CEG),assim podemos afirmar com maior especificidade quais são as especializações daquela relação (em poucas palavras é uma aprimoramento da Alternativa2).
	
![[Pasted image 20240809183643.png]]

<h4>Alt 2</h4>
Acumulamos todas as especializações em apenas uma relação, com a vantagem da relação se manter e não se alterar o formato das relações de CEG, porem gerando várias tuplas cheias de nulls, porem não emprega __PARTICIPACÃO TOTAL__
PPdr 4 -> 
	Disjuntiva onde controlamos os atributos das CEEs a partir de AtC, assim fica com vários atributos AEs nulos e apenas aqueles pelo qual indicado pelo AtC poderiam conter informações não nulas sobre a especialização. 
![[Pasted image 20240809184258.png]]

PPdr 5->
	 para o exemplo resolvidos pelo Procedimento Padrão 3, nesse exemplo somos capazes de de identificar quais especializações foram feitas a partir de quais atributos da entidade especializada não foram nulificados, ja que não podemos representar AtC multivalorado diretamente em CEG.  
	 
![[Pasted image 20240810213933.png]]
==Implicação==:
	A questão é que os atributos os quais as a nossa CEG foi especializado não podem ser nulos, pois perdemos a informação de que possíveis CEEs a qual a nossa instância da CEG foi especializada.
PPdr 6->
	Resolvemos o mesmo problema anterior, porem retiramos a ==Implicação== adicionando bits booleanos na CEG para cada uma das especializações/CEEs possíveis.   
![[Pasted image 20240810214554.png]]

<h4>Alt 3</h4>

PPdr 7 -> 


PPdr 8->

PPdr 9->





em função de garantir consistência do banco de dados   
é necessário ser feita uma [[Normalização]] para que o nosso modelo se mantenha conciso.
