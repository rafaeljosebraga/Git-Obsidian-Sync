//b)
// Diferenças Divididas
// Função para calcular a tabela de diferenças divididas
// X: vetor de pontos x
// Y: vetor de valores da função em X
// Retorna uma matriz d onde cada coluna representa uma ordem de diferença dividida
function T=Tabdiffdiv(x, y)
    n = length(x); 
    T = zeros(n, n);
    T(:, 1) = y; 
    
    for j = 2:n
        for i = 1:(n - j + 1)
            T(i, j) = (T(i + 1, j - 1) - T(i, j - 1)) / (x(i + j - 1) - x(i));
        end
    end
end

// Função Interpolação de Newton
// X: vetor de pontos x
// Y: vetor de valores da função em X
// x_interp: ponto onde queremos interpolar
// Retorna o valor do polinômio interpolador em x_interp
function S = NewtonInterpol(pontos_x, pontos_y, ponto_p)
    n = length(pontos_x); 
    T = Tabdiffdiv(pontos_x, pontos_y); 
    S = pontos_y(1); 
    for i = 2:n
        M = 1;
        for j = 1:(i - 1)
            M = M * (ponto_p - pontos_x(j)); 
        end
        S = S + M * T(1, i); 
    end
endfunction

// Dados de altura e peso em ordem crescente
peso_estimado = 70;
alturas = [163 173 178 183 188]; // Altura em cm
pesos = [63 69 73 79 82]; // Peso em kg
disp("Letra a");
valor_interpolado = NewtonInterpol(pesos(1:3), alturas(1:3), peso_estimado);
mprintf("O valor interpolado com o polinômio de grau 2 é %.6f\n", valor_interpolado);
disp("Letra b")
disp("Estimação do erro");

erro=abs(valor_interpolado-(NewtonInterpol(pesos, alturas, peso_estimado)));
disp(erro);

clc;
disp("Letra C");
/*
rad: Define a constante de conversão de graus para radianos.
matrizDesign: Cria a matriz de design para a regressão trigonométrica, usando seno e cosseno dos pesos em radianos.
coeficientesRegressao: Calcula os coeficientes alfa e beta da regressão, resolvendo o sistema linear de equações.
pesoEstimacao: Define o peso para o qual se deseja estimar a altura.
alturaEstimadaTrigonometria: Calcula a altura estimada usando a função trigonométrica com os coeficientes da regressão.
*/

// Dados de peso (em kg)
pesoDados = [63 69 73 79 82];
// Dados de altura (em cm)
alturaDados = [163 173 178 183 188];

// Conversão de graus para radianos
rad = 0.0174533;

// Matriz de design para regressão trigonométrica
matrizDesign = [sin(pesoDados*rad)' cos(pesoDados*rad)'];

// Cálculo dos coeficientes da regressão
coeficientesRegressao = (matrizDesign'*matrizDesign)\(matrizDesign'*alturaDados');

// Exibir os coeficientes alfa e beta
disp("Coeficientes alfa e Beta da regressão trigonométrica: ");
disp(coeficientesRegressao);

// Peso para o qual se deseja estimar a altura
pesoEstimacao = 70;

// Altura estimada usando a função trigonométrica
alturaEstimadaTrigonometria = coeficientesRegressao(1)*sin(pesoEstimacao*rad) + coeficientesRegressao(2)*cos(pesoEstimacao*rad);

// Exibir a altura estimada
disp("Altura estimada (em cm) para 70kg usando regressão trigonométrica:");
disp(alturaEstimadaTrigonometria);
