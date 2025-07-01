Olá a todos somos a equipe de JK RJ e NK(eh com C) e ficamos com o tópico de de visualização e interpretabilidade de dados.

Contextualizando -> para as nossas explicações será utilizado o conjunto de dados sintético sobre a performance de alunos sobre uma prova, mostrando dados das notas e informações sócioeconomicas sobre cada aluno, onde temos X,Y,Z colunas de nosso dataset.

Sobre o nosso tema vamos falar sobre os gráficos boxplot, o seu irmão o violinplot, o histograma e a matriz de correlação para conseguirmos visualizar e interpretar os dados

note que a importância de realizar essas visualizações, traz o contexto e informações úteis,

Eu vou explicar sobre o boxplot e o histograma:

boxplot: ![[WhatsApp Image 2025-06-15 at 19.12.41.jpeg]]
separa os dados em 4 partes definindo em porcentagem a separação dos dados em um dado intervalo onde as bolinhas que saem do limite inferior ou superior estão muito alem do caixa central dos dados. 

Histograma: possui os intervalos de valores conhecidos como bins que indicam a quantidade de alunos em média em um intervalo de notas. exemplo alunos entre x,y == z
## Tema 1(pre processamento)_BOXPLOT/VIOLIN
por exemplo para realizar o pre processamento ao definir ao definir um ponto de corte para valores outliers ou extremamente fora da curva.

## Tema 3(Seleção de caracteristicas)_MATRIZ DE CORR
para a seleção de caracteristicas a matriz de correlação pode ser uma boa dica de quais colunas e intervalos são de interesse para a aplicação do filter.

## Tema 4(Engenharia de Atributos)_HISTOGRAMA
para a criação de variaveis por exemplo no uso do histograma, pense no caso onde as barras ou bins estão acumulando suas frequencias em grupos. (grupos de bins/barras de frequências separadas) podemos classificar dados em Grupos determinados pela média das bins. 

Nicolas vai falar de matriz de correlação

KDE(frasear por cima _Kernel Density Estimative_) detalha uma estimativa de dados sobre curvas que acumula frequencias.

No fim vamos reservar para falar de cada uma vantagens e desvantagens

	[[RespaldoTecnicoSeminarioIA]]

