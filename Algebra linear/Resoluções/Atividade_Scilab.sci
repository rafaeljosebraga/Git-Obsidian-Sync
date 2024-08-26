disp("Matriz A")
A=[1 0 0;1 1 0;-1 -1 1;-2 0 -2];
disp(A);
disp("Forma de escada reduzida")
disp(rref(A));
disp("Matriz A")
A=[1 0 -3 2;0 -1 -2 2;1 2 4 -5];
disp(A);
disp("Forma de escada reduzida")
disp(rref(A));
disp("Matriz A")
A=[1 2 3 4;9 10 11 12;5 6 7 8;-13 -14 -15 -16]
disp(A);
disp("Forma de escada reduzida")
disp(rref(A));
disp("Matriz A")
A=[1 -1 1 -1 1;-1 1 -1 1 -1]
disp(A);
disp("Forma de escada reduzida")
disp(rref(A));
clc;

function [kernel, image] = nucleo_imagem(A)
    // Calcula o núcleo da matriz A
    [R, pivcol] = rref(A); 
    kernel = [];
    if size(pivcol, "*") < size(A, 2) then
        kernel = zeros(size(A, 2), size(A, 2) - size(pivcol, "*"));
        livres = setdiff(1:size(A, 2), pivcol);
        for j = 1:size(livres, "*")
            kernel(livres(j), j) = 1;
            for i = 1:size(pivcol, "*")
                kernel(pivcol(i), j) = -R(i, livres(j));
            end
        end
    end
    
    // Calcula a imagem da matriz A
    image = [];
    for i = 1:size(pivcol, "*")
        image = [image, A(:, pivcol(i))]; 
    end
endfunction


// (a)
disp("Matriz A");
A=[1 0 0;1 1 0;-1 -1 1;-2 0 -2];
[kernel_a, image_a] = nucleo_imagem(A);
disp(kernel_a,image_a);
disp("Matriz A");
A=[1 0 -3 2;0 -1 -2 2;1 2 4 -5];
[kernel_a, image_a] = nucleo_imagem(A);
disp(kernel_a,image_a);
disp("Matriz A");
A=[1 2 3 4;9 10 11 12;5 6 7 8;-13 -14 -15 -16];
[kernel_a, image_a] = nucleo_imagem(A);
disp(kernel_a,image_a);
disp("Matriz A");
A=[1 -1 1 -1 1;-1 1 -1 1 -1];
[kernel_a, image_a] = nucleo_imagem(A);
disp(kernel_a,image_a);
