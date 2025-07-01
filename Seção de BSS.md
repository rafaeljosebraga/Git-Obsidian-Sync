Block Started by Symbol

uma seção utilizada para armazenar variáveis globais, onde seu proposito vem por economizar espaço no arquivo e no executável,
seja qual for o tipo de variável alocada no . data ela vai terminar na BSS


podemos definir a seção bss com 
```
.section .bss

```
Assim podemos inicializar variáveis globais e outras definições com uma estrutura mais econômica e melhor apropriada para esse uso.