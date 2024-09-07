clear;
function [beta, y_pred, rmse] = regressao_linear(x, y)
  // Calcular a matriz de design X (corrigido)
  X = [ones(length(x), 1), x'];

  // Calcular os coeficientes de regressão
  beta = (X'*X)\(X'*y');

  // Calcular a linha de regressão
  y_pred = beta(1) + beta(2)*x;

  // Calcular o erro quadrático médio (RMSE)
  rmse = sqrt(sum((y - y_pred).^2)/length(y));
endfunction

clc;
// Dados de entrada
x = [1999 2000 2001 2002 2002]//sem soma mes
x = [1999 2000 2001 2002.0833 2002.1667]//com soma mes
y = [4300 2200 36500 41600 42700]
//Plotando pontos
plot(x,y,'ro');
xlabel("x");
ylabel("y");
// Calcular os valores y da linha

// Chamar a função

[beta, y_pred, rmse] = regressao_linear(x, y);

// Imprimir os resultados
disp("Coeficientes de regressão:");
disp(beta);

disp("RMSE:");
disp(rmse);


// Definir os coeficientes do vetor
a = beta(2);
b = beta(1);

x = linspace(10000, 45, 100);

// Calcular os valores y da linha
y = a*x + b;

// Traçar a linha
plot(x, y);
