Aluno: Rafael José Braga Coelho
<h2>Questão 1</h2>
<h3>Letra A</h3>

$T_1= (100 + 50 + T_2 + T_4) / 4$
$T_2 = (100 + T_1 + T_3 + T_5) / 4$
$T_3 = (100 + T_2 + 50 + T_6) / 4$
$T_4 = (50 + T_1 + T_5 + T_7) / 4$
$T_5 = (T_2 + T_4 + T_6 + T_8) / 4$
$T_6 = (T_3 + T_5 + 50 + T_9) / 4$
$T_7 = (50 + T_4 + T_8 + 0) / 4$
$T_8 = (T_5 + T_7 + T_9 + 0) / 4$
$T_9 = (T_6 + T_8 + 50 + 0) / 4$

o sistema fica com essa cara

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

