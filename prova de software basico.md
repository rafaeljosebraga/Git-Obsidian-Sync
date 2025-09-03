1 -> software básico é todo programa  que permanece entre a camada de hardware e os programas do [[Sistema Operacional]] sendo este um programa capáz de interagir diretamente com o hardware a partir de chamadas de sistêma, como software básico temos drivers para controle e utilização do hardware, programas  para inicialização do [[Sistema Operacional]]

2-> primeiro o montado passa pelo arquivo procurando por rótulos armazenando seus locais.

depois o compilador repassa o arquivo traduzindo as linhas em instruções válidas para o computador resolvendo os rótulos internos a sua referencia correta enquanto ignora rótulos externos pois estes só podem ser resolvidos com o ligador com o contexto completo para a resolução do rótulos externos

rótulos locais são referencias a uma localização do código de dentro de seu  arquivo

rótulos externos são referencias externas ao arquivo atual em que o montador está trabalhando essas somente serão resolvidas na etapa de ligação no ligador

3-> possui sim, este deve saber de quais rotulos externos precisam ser ligados para que o programa possa funcionar, assim o link-editor vai buscar pelos arquivos e bibliotecas para resolver as pendencias externas do programa

4-> carregador absoluto: move o programa para a memória em seus valores absolutos com todas as suas referencias e seções predefinidas a uma posição da memória

vantagem: este é bem simples de ser implementado

desvantagem: ineficiente em questão a memória.
 
carregamento dinâmico: este consegue por sua vez mover o programa para a memória com os seus módulos sendo carregados de forma a necessidade onde somente quando era necessário o uso de uma biblioteca os módulos eram carregados na memória adiando a ligação desses módulos externos sendo este aplicado em tempo de execução.

carregamento relocável : ja este permite o programa ser aplicado a qualquer local da memória fazendo com que os modulos sejam somente um offset de um endereço base do módulo relocável, habilitando o programa de ser relocado a qualquer posição da memória principal permitindo a multiprogramação

5-> compilação: o própio assembler sendo este capaz de resolver todos os endereços dos rótulos locais, carregamento