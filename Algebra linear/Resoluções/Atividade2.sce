function centroide = calcCentroid(vetores)
    centroide = mean(vetores, "r");
endfunction

d1 = [1,1];
d2 = [2,1];
d3 = [3,4];
pontos = [1, 1; 2, 1; 3, 4];
centroide = calcCentroid(pontos);
disp("Centróide:");
disp(centroide);
disp("Pontos originais:");
disp(pontos);

// Calcula os pontos centrados na origem
// Correção: Subtrai o centróide de cada linha (ponto)
pontosCentrados = zeros(size(pontos)); // Inicializa a matriz
for i = 1:size(pontos, 1)
  pontosCentrados(i,:) = pontos(i,:) - centroide; 
end
clc;clear;
//Declara nossa Matriz Inicial
pontosCentrados=[-1 -1;0 -1;1 2];

// Mostra os pontos centrados
disp("Pontos Centrados:")
disp(pontosCentrados)

pontosCentradosT = pontosCentrados';

n = size(pontosCentrados, 1); 

// Cálculo da matriz de covariância (corrigido na resposta anterior)
matrizC = (pontosCentradosT * pontosCentrados) / (n - 1);
disp(matrizC);
// Questão e
u1 = [1/sqrt(5); 2/sqrt(5)];
disp("u1:");
disp(u1);
Vu1 = u1' * matrizC * u1;

// Questão f
u2 = [2/sqrt(5); 1/sqrt(5)];
disp("u2:");
disp(u2);
Vu2 = u2' * matrizC * u2;

// Exibir Vu1 e Vu2
disp("Vu1:",Vu1);
disp("Vu2:",Vu2);
