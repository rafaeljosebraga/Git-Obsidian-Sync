// Função de Interpolação de Lagrange
// X: vetor de coordenadas X dos pontos dados
// Y: vetor de coordenadas Y dos pontos dados (f(X))
// xx: valor em que queremos interpolar (valor de X para estimar f(xx))
function interpolacao = lagrange_interpolacao(vetor_X, vetor_Y, valor_xx)
   [m, numero_pontos] = size(vetor_X);
   interpolacao = 0;
   for i = 1 : numero_pontos
       termo_Lagrange = vetor_Y(i);
       for j = 1 : numero_pontos
           if i <> j then
               termo_Lagrange = termo_Lagrange * (valor_xx - vetor_X(j)) / (vetor_X(i) - vetor_X(j));
           end
       end
       interpolacao = interpolacao + termo_Lagrange;
   end
endfunction