assim como o botão de parar o som, o mutex é uma váriavel de maior escopo onde é usado para indicar se a região crítica está atualmente em uso, impedindo o acesso indevido da região de memória em interesse, ele funciona a partir de operações, onde esse o mesmo é considerado a solução de menor custo que em sua essência,.

essa variável pode ser chamada de mutex lock assim como uma variável global ela indica literalmente a possibilidade de acesso a memória na região crítica.

uma das implicações dos [[Mutexes]] é o bloqueio de [[Processos]] ao se descobrir que o processo quer acessar uma [[região crítica]] da memória.

inicialmente não é dito como um uso em threads porem pode ser pensado para o seu uso, tal como foi dito na aula de 13 nov em [[Mutexes em Pthreads]].