Guisso explica como a dependência deve ser  instalada 
![[Pasted image 20240822083032.png]]




Será utilizado a versão 8.3 do MySQL connector-j. 

![[Pasted image 20240822075718.png]]

texto para setar a dependência a ser instalada dentro nosso projeto no netBeans.
![[Pasted image 20240822075903.png]]
![[Pasted image 20240822075928.png]]
assim setamos dentro de pom para o Maven fazer o resto do trabalho quando executarmos o próximo passo 
![[Pasted image 20240822080024.png]]
como resultado o compilador retorna sucesso e a raiz de arquivos deve estar assim.
![[Pasted image 20240822080421.png]]
Instalamos com sucesso o connector-j

A representação de chave primária no banco de dados e no nosso código será geralmente feita pelo ID, vide o exemplo de #chave presente em Banco de Dados
![[Pasted image 20240822081546.png]]

Lixeira serve para definir se um dado é utilizado ou não, geralmente empresas como github por exemplo mantem dados mesmo após a solicitação de exclusão pelo usuário.
![[Pasted image 20240822081758.png]]

neste ponto Guisso analisa as classes que já aprendemos durante as aulas 

ponto interessante, Boolean concluded, um atributo derivado da situação daquele objeto /instância.
![[Pasted image 20240822082238.png]]
Diferente dos outros métodos composeSaveOrUpdateStatement tem como principal funcionalidade de montar a nossa sentença SQL, assim rodando o comando ao banco de dados para fazer uma das 2 funcionalidades citadas.
![[Pasted image 20240822083332.png]]

((Perguntar sobre ExtractObject))

podemos exigir que a variável genérica seja uma herança por obrigatoriedade, afirmamos isso no local em especificado. 
![[Pasted image 20240822084001.png]]

saveOrUpdate tem como capacidade indicar que  uma entidade será armazenada ou atualizada no banco de dados a partir da informação recebida por ID

![[Pasted image 20240822084333.png]]
((Verificar a estrutura try))
Try with resources-> é um bagulhoCabuloso
![[Pasted image 20240822084822.png]]

a partir do JDBC podemos utilizar da ideia de conexão com o banco de dados a partir da forma de organização do tal dito.

esse método presente em Dao ele possui mais detalhes e sua utilização 
![[Pasted image 20240822085334.png]]


Essa foi uma breve apresentação do GuissJConnect a 