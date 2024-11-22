Uma ideia de controle para o [[Sistema Operacional]] em funções de gerenciamento de recursos, threads e condições de corrida, existem vários tipos de semáforos que pretendem organizar esse papel, como os semáforos binários e os de contagem, 

É uma implementação de [[Mutexes]]  

como uma ideia de implementação básica o semáforo funciona a partir de duas execuções wait() e signal() onde signal libera o sinal e o wait() verifica o estado do sinal.