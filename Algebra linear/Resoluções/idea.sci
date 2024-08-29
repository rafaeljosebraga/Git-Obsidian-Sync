// (a) Matriz mágica 6x6
A=testmatrix('magi',6)
disp("Matriz mágica (a):");
disp(A);
disp("Forma escalonada reduzida",rref(A));
// (b) Matriz de Hilbert 6x6
A=testmatrix('hilb',6)
disp("Matriz de Hilbert (b):");
disp(A);
disp("Forma escalonada reduzida",rref(A));
// (c) Matriz triangular superior de 1's 6x6
A = tril(ones(6,6));
disp("Matriz triangular superior (c):");
disp(A);
disp("Forma escalonada reduzida",rref(A));
