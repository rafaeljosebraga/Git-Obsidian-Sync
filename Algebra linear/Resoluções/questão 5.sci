function questao5(A)
[P, D] = spec(A);
P_inv = inv(P);
AP = P_inv * A * P;
disp("Matriz diagonal D (autovalores):");
disp(D);
disp("Matriz P (autovetores):"); 
disp(P);
disp("Verifica ou de P^(-1)*A*P:");
disp(AP);
endfunction
A=[1 2;0 1];
questao5(A);
