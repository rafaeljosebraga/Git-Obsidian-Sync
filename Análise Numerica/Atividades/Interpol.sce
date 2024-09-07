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
x = [11 23 47 48 49];
y = [4300 2200 36500 41600 42700];

// Chamar a função
[beta, y_pred, rmse] = regressao_linear(x, y);

// Imprimir os resultados
disp("Coeficientes de regressão:");
disp(beta);

disp("RMSE:");
disp(rmse);

