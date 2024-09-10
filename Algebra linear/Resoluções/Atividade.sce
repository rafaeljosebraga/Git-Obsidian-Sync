function centroide = calcCentroid(vetores)
    centroide = mean(vetores, "r");
endfunction

d1 = [1,1];
d2 = [2,1];
d3 = [3,4];
pontos = [1, 1; 2, 1; 3, 4];
centroide = calcCentroid(pontos);

pontosCentrados = pontos - centroide;
pontosCentradosT = pontosCentrados';

n = size(pontosCentrados, 1); // número de linhas
// questão c
matrizC = (pontosCentrados * pontosCentradosT) / n;

// questão e
u1 = [1/sqrt(5); 2/sqrt(5)];
disp(u1);
Vu1 = u1' * (matrizC * u1);

// questão f
u2 = [2/sqrt(5); 1/sqrt(5)];
disp(u2);
Vu2 = u2' * (matrizC * u2);

// Exibir Vu1 e Vu2
disp(Vu1);
disp(Vu2);
