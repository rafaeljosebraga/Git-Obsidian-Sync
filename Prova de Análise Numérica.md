Aluno: Rafael José Braga Coelho
<h2>Questão 1</h2>
<h3>Letra A</h3>
![[Pasted image 20240824164505.png]]

Para calcularmos cada um dos 9 $T$s pontos devemos somar os pontos adjacentes e fazer a média aritmética, por exemplo $T_1$ onde somamos 100+50+T2+T4 ou seja $T_1=$$\dfrac {(100+50+T2+T4)} {4}$

$T_1= (100 + 50 + T_2 + T_4) / 4$
$T_2 = (100 + T_1 + T_3 + T_5) / 4$
$T_3 = (100 + T_2 + 50 + T_6) / 4$
$T_4 = (50 + T_1 + T_5 + T_7) / 4$
$T_5 = (T_2 + T_4 + T_6 + T_8) / 4$
$T_6 = (T_3 + T_5 + 50 + T_9) / 4$
$T_7 = (50 + T_4 + T_8 + 0) / 4$
$T_8 = (T_5 + T_7 + T_9 + 0) / 4$
$T_9 = (T_6 + T_8 + 50 + 0) / 4$

segue a refatoração do sistema acima:

 $4T_1 - T_2 - T_4 = 150$
$-T_1 + 4T_2 - T_3 - T_5 = 100$
$-T_2 + 4T_3 - T_6 = 150$
$-T_1 + 4T_4 - T_5 - T_7 = 50$
$-T_2 - T_4 + 4T_5 - T_6 - T_8 = 0$
$-T_3 - T_5 + 4T_6 - T_9 = 50$
$-T_4 + 4T_7 - T_8 = 50$
$-T_5 - T_7 + 4T_8 - T_9 = 0$
$-T_6 - T_8 + 4T_9 = 50$

<h3>Letra B</h3>

A representação do sistema em forma de matriz fica desta forma, onde todos os $Tn$ que não estão na soma são representados como zero.

A= a nossa matriz com as variáveis.
b= o vetor de termos independentes.

Utilizando a decomposição LU disponível pelo scilab o código permanece com esta aparência
```
A = [ 4  -1   0  -1   0   0   0   0   0;
     -1   4  -1   0  -1   0   0   0   0;
      0  -1   4   0   0  -1   0   0   0;
     -1   0   0   4  -1   0  -1   0   0;
      0  -1   0  -1   4  -1   0  -1   0;
      0   0  -1   0  -1   4   0   0  -1;
      0   0   0  -1   0   0   4  -1   0;
      0   0   0   0  -1   0  -1   4  -1;
      0   0   0   0   0  -1   0  -1   4 ];

b = [ 150; 100; 150;  50;   0;  50;  50;   0;  50 ];

[L, U] = lu(A);
y = L\b;
x = U\y;
disp(x);
```

Aqui está o resultado da resolução do sistema de $T_1$ até $T_9$:
   67.857143
   71.428571
   67.857143
   50.000000
   50.000000
   50.000000
   32.142857
   28.571429
   32.142857