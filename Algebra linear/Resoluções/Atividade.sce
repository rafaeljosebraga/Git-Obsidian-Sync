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
pontosCentrados = pontos - centroide;

// Mostra os pontos centrados
disp("Pontos Centrados:")
disp(pontosCentrados)

pontosCentradosT = pontosCentrados';

n = size(pontosCentrados, 1); 

// Questão c: calcula a matriz de covariância
matrizC = (pontosCentradosT * pontosCentrados) / (n - 1); 

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
