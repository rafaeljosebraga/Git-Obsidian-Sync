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

x = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38];

y = [358.33; 358.33; 358.33; 358.33; 358.33; 358.33; 358.33; 358.33; 358.33; 358.33; 358.33; 358.33; 183.33; 183.33; 183.33; 183.33; 183.33; 183.33; 183.33; 183.33; 183.33; 183.33; 183.33; 183.33; 3041.67; 3041.67; 3041.67; 3041.67; 3041.67; 3041.67; 3041.67; 3041.67; 3041.67; 3041.67; 3041.67; 3041.67; 3466.67; 3466.67]';
plot(x,y,'ro');
// Chamar a função
[beta, y_pred, rmse] = regressao_linear(x, y);

// Imprimir os resultados
disp("Coeficientes de regressão:");
disp(beta);

disp("RMSE:");
disp(rmse);

